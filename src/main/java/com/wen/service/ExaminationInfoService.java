package com.wen.service;

import java.util.List;

import com.wen.pojo.TbExaminationInfo;
import com.wen.pojo.TbExaminationInfoExample;

public interface ExaminationInfoService {
	
	public void insertExamInfo(TbExaminationInfo examInfo);

	public void updateState(Integer stuid);
	
	public List<TbExaminationInfo> selectExamInfo(Integer stuid);

	public void updateZkzh(TbExaminationInfo examInfo);
	
	public void updateScore(TbExaminationInfo record);
	
	public List<TbExaminationInfo> selectExamInfoByZkzh(String zkzh);
}
