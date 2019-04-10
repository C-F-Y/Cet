package com.wen.service;

import java.util.List;

import com.wen.pojo.QueryVo;
import com.wen.pojo.TbStudent;

public interface StudentService {

	List<TbStudent> selectStudent(TbStudent student);

	void updateStudentById(TbStudent student);

	TbStudent selectStudentById(Integer id);
	List<QueryVo> queryStudentByQueryVo(QueryVo vo);

	void insertStudentList(List<TbStudent> studentList);
	
}
