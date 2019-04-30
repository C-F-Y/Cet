package com.wen.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.wen.pojo.TbStudent;
import com.wen.service.StudentService;
import com.wen.util.ExcelReaderUtil;

@Controller
public class UploadController {
	@Autowired
	private StudentService studentService;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UploadController.class);
	

    @RequestMapping("/uploadFile")
    public String upload(@RequestParam("file") MultipartFile file,Model model) {
        if (file.isEmpty()) {
        	model.addAttribute("tip", "上传失败");
            return "admin/upload";
        }
        String fileName = file.getOriginalFilename();
        String filePath = "D:/upload/";
        File dest = new File(filePath + fileName);
        try {
			file.transferTo(dest);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
        String path = filePath+fileName;
        List<TbStudent> studentList = new ArrayList<>();
        try{
        	List<List<String>> lists = ExcelReaderUtil.readExcel(path);
            lists.remove(0);//index=0是Excel中的标题，不是想要的数据
            for (List<String> list : lists) {
            	TbStudent student = new TbStudent();
            	student.setXuehao(list.get(0));
            	student.setName(list.get(1));
            	student.setSex(list.get(2));
            	student.setIdcardnum(list.get(3));
            	student.setSchool(list.get(4));
            	student.setXiaoqu(list.get(5));
            	student.setXueyuan(list.get(6));
            	student.setZhuanye(list.get(7));
            	student.setBanji(list.get(8));
            	student.setXuezhi(list.get(9));
            	student.setRuxuetime(list.get(10));
            	student.setPhone(list.get(11));
            	studentList.add(student);
        }
        }catch(Exception e){
        	e.printStackTrace();
        	model.addAttribute("tip", "文件格式错误");
        	dest.delete();
        	return "admin/inputInfo";
        }
        //将studentList插入数据库 student表中
        studentService.insertStudentList(studentList);
		model.addAttribute("tip", "导入信息成功");
        return "admin/inputInfo";
        
    }
}
