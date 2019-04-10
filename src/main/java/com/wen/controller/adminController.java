package com.wen.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wen.mapper.TbExaminationInfoMapper;
import com.wen.mapper.TbNoticeMapper;
import com.wen.pojo.QueryVo;
import com.wen.pojo.Result;
import com.wen.pojo.TbExaminationInfo;
import com.wen.pojo.TbNotice;
import com.wen.pojo.TbNoticeExample;
import com.wen.pojo.TbNoticeExample.Criteria;
import com.wen.pojo.TbSchool;
import com.wen.pojo.TbStudent;
import com.wen.pojo.TbUser;
import com.wen.service.ExaminationInfoService;
import com.wen.service.SchoolService;
import com.wen.service.StudentService;
import com.wen.service.UserService;
import com.wen.util.MD5Util;

@Controller
public class adminController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private UserService userService;
	@Autowired
	private SchoolService schoolService;
	@Autowired
	private ExaminationInfoService examinationInfoService;
	@Autowired
	private TbExaminationInfoMapper examinationInfoMapper;
	@Autowired
	private TbNoticeMapper noticeMapper;
	
	@RequestMapping("admin")
	public String login() {

		return "admin/login";
	}

	@RequestMapping("selectAdmin")
	public String admIndex(String username, String password, Model model, HttpSession session) {
		if ("admin".equals(username)&&"admin".equals(password)) {
			session.setAttribute("admin", username);
			return "admin/welcome";
		} else {
			model.addAttribute("error", "用户名或密码错误！");
			return "admin/login";
		}
	}
	//进入欢迎页面
	@RequestMapping("Awelcome")
	public String welcome(){
		return "admin/welcome";
	}
	//进入报名审核页面
	@RequestMapping("Averify")
	public String verify(Model model,QueryVo vo){
		
		List<TbSchool> schoolList = schoolService.selectschool();
		model.addAttribute("schoolList", schoolList);
		vo.setStatus(2);
		List<QueryVo> studentList = studentService.queryStudentByQueryVo(vo);
		
		model.addAttribute("vo", vo);
		model.addAttribute("studentList", studentList);
		return "admin/verify";
	}
	//学生报名审核，审核不通过
	@RequestMapping("admin/updateStatusToFour")
	public @ResponseBody 
	String updateStatus(Integer id){
		TbUser user = new TbUser();
		user.setId(id);
		user.setStatus(4);
		userService.updateUser(user);
		return "OK";
	}
	//学生报名审核，审核通过。并自动生成准考证号
	/*准考证生成规则：共15位
	 学校编号（5）+校区号（1）+考试时间（3）+ 语种（1）+ 考场号（3）+座位号（2）
	 学校编号：数据库查
	校区号：统一为1
	考试时间：182    18年第二次考试
	语种：数据库查    1:四级口试  2：四级笔试 3：六级口试 4：六级笔试
	考场号：学号最后5位中的 前三位
	座位号：用学号最后两位
	*/
	@RequestMapping("admin/updateStatusToThree")
	public @ResponseBody 
	String updateStatusToTwoByStuId(Integer id){
		TbUser user = new TbUser();
		user.setId(id);
		user.setStatus(3);
		userService.updateUser(user);
		//生成准考证：
		//根据id查询学生
		TbUser user2 = userService.selectUserById(id);
		TbStudent student = studentService.selectStudentById(user2.getStuid());
		//报考信息
		TbExaminationInfo examInfo = examinationInfoService.selectExamInfo(user2.getStuid()).get(0);
		//学校编号
		String schoolNumber = schoolService.selectSchoolNum(student.getSchool());
		
		//试室号+座位号 准考证最后5位，加5个0是防止位数不够
		String ssh_zwh = ("00000"+student.getXuehao()).substring(("00000"+student.getXuehao()).length()-5);
		//考试语种
		String yuzhong = "1";
		if(examInfo.getKemu().equals("英语四级口语")){
			yuzhong = "1";
		}else if(examInfo.getKemu().equals("英语四级笔试")){
			yuzhong = "2";
		}else if(examInfo.getKemu().equals("英语六级口语")){
			yuzhong = "3";
		}else if(examInfo.getKemu().equals("英语六级笔试")){
			yuzhong = "4";
		}
		String zkzh = schoolNumber+"1"+"182"+yuzhong+ssh_zwh;
		TbExaminationInfo examInfo2 = new TbExaminationInfo();
		examInfo2.setId(examInfo.getId());
		examInfo2.setZkzh(zkzh);
		examinationInfoService.updateZkzh(examInfo2);
		return "OK";
	} 
	//进入录入成绩页面
	@RequestMapping("AinputScore")
	public String inputScore(Model model,QueryVo vo){
		List<TbSchool> schoolList = schoolService.selectschool();
		model.addAttribute("schoolList", schoolList);
		//查询报名状态为 报名成功 的学生
		vo.setStatus(3);
		List<QueryVo> studentList = studentService.queryStudentByQueryVo(vo);
		model.addAttribute("vo", vo);
		model.addAttribute("studentList", studentList);
		return "admin/inputScore";
	}
	//录入成绩
	@RequestMapping("admin/inputScore")
	public String inputScore(QueryVo vo,Model model){
		if(vo.getExamInfoList()!=null){
			for(TbExaminationInfo examInfo : vo.getExamInfoList()){
				TbExaminationInfo record = new TbExaminationInfo();
				//用户id kemu score
				if(examInfo.getKemu().equals("英语四级口语")){
					record.setSkscore(examInfo.getScore());
				}else if(examInfo.getKemu().equals("英语四级笔试")){
					record.setSbscore(examInfo.getScore());
				}else if(examInfo.getKemu().equals("英语六级口语")){
					record.setLkscore(examInfo.getScore());
				}else if(examInfo.getKemu().equals("英语六级笔试")){
					record.setLbscore(examInfo.getScore());
				}
				if(examInfo.getScore()!=null){
					TbUser user = new TbUser();
					user.setId(examInfo.getId());
					user.setStatus(5);
					userService.updateUser(user);
					//根据用户id查找stuid
					Integer stuid = userService.selectUserById(examInfo.getId()).getStuid();
					//根据stuid更新成绩
					record.setStuid(stuid);
					examinationInfoService.updateScore(record);
				}
				
			}
		}
		List<TbSchool> schoolList = schoolService.selectschool();
		model.addAttribute("schoolList", schoolList);
		//查询报名状态为 报名成功 的学生
		vo.setStatus(3);
		List<QueryVo> studentList = studentService.queryStudentByQueryVo(vo);
		model.addAttribute("studentList", studentList);
		
		return "admin/inputScore";
		
	}
	//进入查询成绩页面
	@RequestMapping("AqueryScore")
	public String queryScore(Model model,QueryVo vo){
		List<TbSchool> schoolList = schoolService.selectschool();
		model.addAttribute("schoolList", schoolList);
		//查询报名状态为 成绩已录入 的学生
		vo.setStatus(5);
		List<QueryVo> studentList = studentService.queryStudentByQueryVo(vo);
		model.addAttribute("vo", vo);
		model.addAttribute("studentList", studentList);
		return "admin/queryScore";
	}
	
	
	//进入密码重置页面
	@RequestMapping("AresetPwd")
	public String resetPwd(Model model,QueryVo vo){
		List<TbSchool> schoolList = schoolService.selectschool();
		model.addAttribute("schoolList", schoolList);
		
		List<QueryVo> studentList = studentService.queryStudentByQueryVo(vo);
		model.addAttribute("vo", vo);
		model.addAttribute("studentList", studentList);
		return "admin/resetPwd";
	}
	
	//处理重置密码请求
	@RequestMapping("admin/resetPassword")
	public @ResponseBody
	String resetPassword(Integer id){
		TbUser user = new TbUser();
		user.setId(id);
		user.setPassword(MD5Util.md5("0000"));
		userService.updateUser(user);
		return "OK";
	}
	@RequestMapping("AinputInfo")
	public String toinputInfo(){
		return "admin/inputInfo";
	}
	@RequestMapping("AsendNotice")
	public String toSendNotice(){
		return "admin/sendNotice";
	}
	@RequestMapping("saveNotice")
	@ResponseBody
	public String sendNotice(TbNotice notice){
		notice.setTime(new Date());
		try{
		noticeMapper.insertSelective(notice);
		}catch(Exception e){
			e.printStackTrace();
			return "保存失败！";
		}
		if(notice.getState()==1){
			return "发布成功！";
		}
		return "保存成功";
	} 
	@RequestMapping("myNotice")
	@ResponseBody
	public TbNotice myNotice(){
		TbNoticeExample example = new TbNoticeExample();
		com.wen.pojo.TbNoticeExample.Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(3);
		List<TbNotice> noticeList = noticeMapper.selectByExample(example);
		if(noticeList!=null&&noticeList.size()>0){
			return noticeList.get(noticeList.size()-1);
		}
		return null;
		
	}
	
}
