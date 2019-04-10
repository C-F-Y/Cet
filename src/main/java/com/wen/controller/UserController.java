package com.wen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wen.mapper.TbNoticeMapper;
import com.wen.pojo.TbExaminationInfo;
import com.wen.pojo.TbNotice;
import com.wen.pojo.TbStudent;
import com.wen.pojo.TbUser;
import com.wen.service.ExaminationInfoService;
import com.wen.service.StudentService;
import com.wen.service.UserService;
import com.wen.util.CodeUtil;
import com.wen.util.MD5Util;
import com.wen.util.MailUtil;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private ExaminationInfoService examinationInfoService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private TbNoticeMapper noticeMapper;
	// 首页
	@RequestMapping("index")
	public String index() {
		return "index";
	}

	// 考试简介
	@RequestMapping("examIntroduction")
	public String examIntroduction() {
		return "ExamIntroduction";
	}

	// 考生须知
	/*@RequestMapping("candidateNotice")
	public String candidateNotice() {
		return "CandidateNotice";
	}*/
	@RequestMapping("candidateNotice")
	public String candidateNotice(Integer id,Model model) {
		if(id==null){
			id = 1;
		}
		TbNotice notice = noticeMapper.selectByPrimaryKey(id);
		List<TbNotice> noticeList = noticeMapper.selectByExample(null);
		if(noticeList!=null && noticeList.size()>0){
			for (TbNotice tbNotice : noticeList) {
				System.out.println(tbNotice);
				
			}
		}
		model.addAttribute("notice", notice);
		model.addAttribute("noticeList", noticeList);
		return "CandidateNotice";
	}

	// 考试时间
	@RequestMapping("testDatePlan")
	public String testDatePlan() {
		return "TestDatePlan";
	}

	// 报名流程
	@RequestMapping("registerFlow")
	public String registerFlow() {
		return "RegisterFlow";
	}

	// 常见问题
	@RequestMapping("commonProblem")
	public String commonProblem() {
		return "CommonProblem";
	}

	// 特别提示
	@RequestMapping("specialNotice")
	public String specialNotice() {
		return "SpecialNotice";
	}

	// 登录界面
	@RequestMapping("cetLogin")
	public String cetLongin() {
		return "CetLogin";
	}

	// 注册界面
	@RequestMapping("register")
	public String cetRegister() {
		return "register";
	}

	// 跳转到打印准考证页面
	@RequestMapping("print")
	public String print() {
		return "QuickPrintTestTicket";
	}

	// 跳转查询成绩页面
	@RequestMapping("queryScore")
	public String queryScore() {
		return "queryScore";
	}

	// 异步校验用户名是否存在
	@RequestMapping("selectUsername")
	public @ResponseBody String selectUsername(String username) throws IOException {
		List<TbUser> userList = userService.selectUserByUsername(username);

		if (!userList.isEmpty() || userList.size() > 0) {
			return "error";
		} else {
			return "OK";
		}
	}

	@RequestMapping("addUser")
	public String addUser(TbUser user, String checkImg, HttpSession session, Model model) {
		if (!(checkImg.equalsIgnoreCase(session.getAttribute("code").toString()))) { // 忽略验证码大小写
			model.addAttribute("error", "验证码不正确！");
			System.out.println("验证码不正确！");
			return "register";
		}

		if (!user.getEmail().matches("^\\w+@(\\w+\\.)+\\w+$")) {
			return "register";
		}
		String code = CodeUtil.generateUniqueCode();
		user.setPassword(MD5Util.md5(user.getPassword()));
		user.setCode(code);
		try {
			userService.addUser(user);
			new Thread(new MailUtil(user.getEmail(), code)).start();
			System.out.println("注册成功");
			model.addAttribute("error", "请到邮箱中激活账户！");
			return "CetLogin";
		} catch (Exception e) {
			System.out.println("注册失败");
			e.printStackTrace();
			return "register";
		}

	}

	@RequestMapping("activation")
	@ResponseBody
	public String update(String code) {
		System.out.println(code);
		try {
			userService.updateState(code);
			System.out.println("邮件激活成功");
			return "邮件激活成功";
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("邮件激活失败");
			return "邮件激活失败";
		}

	}

	@RequestMapping("selectUser")
	public String SelectUser(TbUser user, String checkImg, HttpSession session, Model model) {
		if (!(checkImg.equalsIgnoreCase(session.getAttribute("code").toString()))) { // 忽略验证码大小写
			model.addAttribute("error", "验证码不正确！");
			System.out.println("验证码不正确！");
			return "CetLogin";
		}
		TbUser user1 = userService.selectUserByUsername(user.getUsername()).get(0);
		System.out.println(MD5Util.md5(user.getPassword()));
		System.out.println(user1.getPassword());
		if (user1.getState() != 2) {
			model.addAttribute("error", "您的账户还未激活，请到邮箱中激活账户！");
			return "CetLogin";
		}
		if (!MD5Util.md5(user.getPassword()).equals(user1.getPassword())) {
			System.out.println("账户或密码错误！");
			model.addAttribute("error", "账户或密码错误！");
			return "CetLogin";
		}
		user1.setPassword(null);
		session.setAttribute("user", user1);
		return "welcome";
	}

	// 资格信息查询界面
	@RequestMapping("selectInfo")
	public String selectInfo() {

		return "SelectInfo";
	}

	// 执行查询成绩请求
	@RequestMapping("selectStudentScore")
	public String queryScore(String zkzh, String date, Model model) {
		// Student student = studentService.selectScore(zkzh);
		// 根据准考证号查考试信息
		List<TbExaminationInfo> examInfoList = examinationInfoService.selectExamInfoByZkzh(zkzh);

		if (examInfoList != null && examInfoList.size() > 0) {
			TbExaminationInfo examInfo = examInfoList.get(0);
			Integer stuid = examInfo.getStuid();
			TbStudent student = studentService.selectStudentById(stuid);
			if (student.getIdcardnum().substring(0, 4).equals(date)) {
				Integer score = null;
				if (examInfo.getKemu().equals("英语四级口语")) {
					score = examInfo.getSkscore();
				} else if (examInfo.getKemu().equals("英语四级笔试")) {
					score = examInfo.getSbscore();
				} else if (examInfo.getKemu().equals("英语六级口语")) {
					score = examInfo.getLkscore();
				} else if (examInfo.getKemu().equals("英语六级笔试")) {
					score = examInfo.getLbscore();
				}
				model.addAttribute("student", student);
				model.addAttribute("examInfo", examInfo);
				model.addAttribute("score", score);
				return "yourScore";

			} else {
				model.addAttribute("error", "查无信息！");
				return "queryScore";
			}

		} else {
			model.addAttribute("error", "查无信息！");
			return "queryScore";
		}

	}

	// 跳转到打印准考证页面
	@RequestMapping("printfZkz")
	public String printZkz(TbStudent student, Model model) {
		List<TbStudent> studentList = studentService.selectStudent(student);
		if (studentList != null && studentList.size() > 0) {
			model.addAttribute("student", studentList.get(0));
			// 根据stuid查找考试信息
			Integer stuid = studentList.get(0).getId();
			List<TbExaminationInfo> examInfoList = examinationInfoService.selectExamInfo(stuid);
			if (examInfoList != null && examInfoList.size() > 0) {
				model.addAttribute("examInfo", examInfoList.get(0));
				return "zkz";
			}
			
		}
		model.addAttribute("error", "暂无信息");
		return "QuickPrintTestTicket";
	}
}
