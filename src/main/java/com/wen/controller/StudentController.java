package com.wen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wen.pojo.TbExaminationInfo;
import com.wen.pojo.TbSchool;
import com.wen.pojo.TbStudent;
import com.wen.pojo.TbUser;
import com.wen.service.ExaminationInfoService;
import com.wen.service.SchoolService;
import com.wen.service.StudentService;
import com.wen.service.UserService;
@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private SchoolService schoolService;
	@Autowired
	private UserService userService;
	@Autowired
	private ExaminationInfoService examinationInfoService;
	//资格信息查询
		@RequestMapping("selectStudent")
		public String selectInf(TbStudent student ,Model model){
			List<TbStudent> studentList = studentService.selectStudent(student);
			System.out.println(studentList);
			if(studentList==null || studentList.size()==0){
				model.addAttribute("error", "查无信息！");
				return "SelectInfo";
			}
			TbStudent student2 = studentList.get(0);
			model.addAttribute("student", student2);
			List<TbExaminationInfo> examInfoList = examinationInfoService.selectExamInfo(student2.getId());
			if(examInfoList!=null && examInfoList.size()>0){
				model.addAttribute("examInfo", examInfoList.get(0));
			}
			
			//查询学校 校区，学院，专业等情况
			List<TbSchool> schoolList = schoolService.selectschool();
			List<TbSchool> xueyuanList = schoolService.selectxueyuan();
			List<TbSchool> zhuanyeList = schoolService.selectzhuanye();
			List<TbSchool> banjiList = schoolService.selectbanji();
			model.addAttribute("schoolList", schoolList);
			model.addAttribute("xueyuanList", xueyuanList);
			model.addAttribute("zhuanyeList", zhuanyeList);
			model.addAttribute("banjiList", banjiList);
			return "ConfirmInfo";
		}
		//修改学生信息
		@RequestMapping(value = "updateStudent")
		public String update(TbStudent student,Model model){
			//System.out.println(student.getId());
			//修改
			studentService.updateStudentById(student);
			//显示数据
			TbStudent s = studentService.selectStudentById(student.getId());
			//查询学校 校区，学院，专业等情况
			List<TbSchool> schoolList = schoolService.selectschool();
			List<TbSchool> xueyuanList = schoolService.selectxueyuan();
			List<TbSchool> zhuanyeList = schoolService.selectzhuanye();
			List<TbSchool> banjiList = schoolService.selectbanji();
			model.addAttribute("schoolList", schoolList);
			model.addAttribute("xueyuanList", xueyuanList);
			model.addAttribute("zhuanyeList", zhuanyeList);
			model.addAttribute("banjiList", banjiList);
			model.addAttribute("student", s);
			return "ConfirmInfo";
		}
		//跳转到报名界面
		@RequestMapping("kemu")
		public String  kemu(Integer id,Model model){
			TbStudent student = studentService.selectStudentById(id);
			List<TbExaminationInfo> examInfoList = examinationInfoService.selectExamInfo(id);
			if(examInfoList!=null && examInfoList.size()>0){
				model.addAttribute("examInfo", examInfoList.get(0));
			}
			model.addAttribute("student", student);
			return "Kemu";
		}
		//报名，更新报名状态信息
		@RequestMapping("updateStatus")
		public String  updateStatus(TbUser user,String kemu,HttpSession session,Integer stuid){
			//status为2表明 已提交报名，状态为核审中
			user.setStatus(2);
			userService.updateUser(user);
			TbUser u = userService.selectUserById(user.getId());
			u.setPassword(null);
			TbExaminationInfo examInfo = new TbExaminationInfo();
			examInfo.setKemu(kemu);
			examInfo.setStuid(stuid);
			examInfo.setState(1);
			examinationInfoService.updateState(stuid);
			examinationInfoService.insertExamInfo(examInfo);
			session.setAttribute("user", u);
			return "welcome";
		}
		//通过学生ID查询学生信息
		@RequestMapping("selectStudentById")
		public String selectStudentById(Integer stuId,Model model){
			TbStudent student = studentService.selectStudentById(stuId);
			List<TbExaminationInfo> examInfoList = examinationInfoService.selectExamInfo(stuId);
			if(examInfoList!=null&&examInfoList.size()>0){
				model.addAttribute("examInfo", examInfoList.get(0));
			}
			model.addAttribute("student", student);
			
			return "ConfirmInfo";
		}
}
