package com.wen.pojo;

import java.util.List;

public class QueryVo {
	private Integer id;
	private String school;
	private String kemu;
	private String xuehao;
	private String name;
	private Integer status;//报名状态
	private String zhuanye;
	private Integer skScore;
	private Integer sbScore;
	private Integer lkScore;
	private Integer lbScore;
	private Integer score;
	private List<TbExaminationInfo> examInfoList;
	public QueryVo() {
		super();
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	
	public String getZhuanye() {
		return zhuanye;
	}
	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}
	public String getKemu() {
		return kemu;
	}
	public void setKemu(String kemu) {
		this.kemu = kemu;
	}
	public String getXuehao() {
		return xuehao;
	}
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
	
	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public List<TbExaminationInfo> getExamInfoList() {
		return examInfoList;
	}
	
	
	
	public Integer getSkScore() {
		return skScore;
	}

	public void setSkScore(Integer skScore) {
		this.skScore = skScore;
	}

	public Integer getSbScore() {
		return sbScore;
	}

	public void setSbScore(Integer sbScore) {
		this.sbScore = sbScore;
	}

	public Integer getLkScore() {
		return lkScore;
	}

	public void setLkScore(Integer lkScore) {
		this.lkScore = lkScore;
	}

	public Integer getLbScore() {
		return lbScore;
	}

	public void setLbScore(Integer lbScore) {
		this.lbScore = lbScore;
	}

	public void setExamInfoList(List<TbExaminationInfo> examInfoList) {
		this.examInfoList = examInfoList;
	}

	@Override
	public String toString() {
		return "QueryVo [id=" + id + ", school=" + school + ", kemu=" + kemu + ", xuehao=" + xuehao + ", name=" + name
				+ ", status=" + status + ", zhuanye=" + zhuanye + ", skScore=" + skScore + ", sbScore=" + sbScore
				+ ", lkScore=" + lkScore + ", lbScore=" + lbScore + ", score=" + score + ", examInfoList="
				+ examInfoList + "]";
	}
	
	
	
	
}
