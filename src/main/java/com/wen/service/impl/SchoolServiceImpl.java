package com.wen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wen.mapper.TbSchoolMapper;
import com.wen.pojo.TbSchool;
import com.wen.pojo.TbSchoolExample;
import com.wen.pojo.TbStudentExample.Criteria;
import com.wen.service.SchoolService;
@Service
public class SchoolServiceImpl implements SchoolService {

	@Autowired
	private TbSchoolMapper schoolMapper;
	
	@Override
	public List<TbSchool> selectschool() {
		// TODO Auto-generated method stub
		return schoolMapper.selectschool();
	}

	@Override
	public List<TbSchool> selectxueyuan() {
		// TODO Auto-generated method stub
		return schoolMapper.selectxueyuan();
	}

	@Override
	public List<TbSchool> selectzhuanye() {
		// TODO Auto-generated method stub
		return schoolMapper.selectzhuanye();
	}

	@Override
	public List<TbSchool> selectbanji() {
		// TODO Auto-generated method stub
		return schoolMapper.selectbanji();
	}

	@Override
	public String selectSchoolNum(String school) {
		TbSchoolExample example = new TbSchoolExample();
		com.wen.pojo.TbSchoolExample.Criteria criteria = example.createCriteria();
		criteria.andSchoolEqualTo(school);
		List<TbSchool> schlloList = schoolMapper.selectByExample(example);
		return schlloList.get(0).getSchoolnum();
	}

}
