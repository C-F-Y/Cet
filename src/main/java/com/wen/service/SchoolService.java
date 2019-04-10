package com.wen.service;

import java.util.List;

import com.wen.pojo.TbSchool;

public interface SchoolService {
	
	public List<TbSchool> selectschool();
	public List<TbSchool> selectxueyuan();
	public List<TbSchool> selectzhuanye();
	public List<TbSchool> selectbanji();
	public String selectSchoolNum(String school);
	
}
