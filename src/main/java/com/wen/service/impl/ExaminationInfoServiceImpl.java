package com.wen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wen.mapper.TbExaminationInfoMapper;
import com.wen.pojo.TbExaminationInfo;
import com.wen.pojo.TbExaminationInfoExample;
import com.wen.pojo.TbExaminationInfoExample.Criteria;
import com.wen.service.ExaminationInfoService;
@Service
public class ExaminationInfoServiceImpl implements ExaminationInfoService{
	@Autowired
	private TbExaminationInfoMapper examinationInfoMapper;
	
	
	@Override
	public void insertExamInfo(TbExaminationInfo examInfo) {
		examinationInfoMapper.insertSelective(examInfo);
	}


	@Override
	public void updateState(Integer stuid) {
		TbExaminationInfo record = new TbExaminationInfo();
		record.setState(2);
		TbExaminationInfoExample example = new TbExaminationInfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andStuidEqualTo(stuid);
		
		examinationInfoMapper.updateByExampleSelective(record, example);
	}


	@Override
	public List<TbExaminationInfo> selectExamInfo(Integer stuid) {
		TbExaminationInfoExample example = new TbExaminationInfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(1);
		criteria.andStuidEqualTo(stuid);
		return examinationInfoMapper.selectByExample(example);
		
	}


	@Override
	public void updateZkzh(TbExaminationInfo examInfo) {
		examinationInfoMapper.updateByPrimaryKeySelective(examInfo);
		
	}


	@Override
	public void updateScore(TbExaminationInfo record) {
		TbExaminationInfoExample example = new TbExaminationInfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andStateEqualTo(1);
		
		examinationInfoMapper.updateByExampleSelective(record, example);
	}


	@Override
	public List<TbExaminationInfo> selectExamInfoByZkzh(String zkzh) {
		TbExaminationInfoExample example = new TbExaminationInfoExample();
		Criteria criteria = example.createCriteria();
		criteria.andZkzhEqualTo(zkzh);
		criteria.andStateEqualTo(1);
		return examinationInfoMapper.selectByExample(example);
		
	}


	

}
