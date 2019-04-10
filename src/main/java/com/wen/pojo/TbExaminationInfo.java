package com.wen.pojo;

public class TbExaminationInfo {
    private Integer id;

    private Integer stuid;

    private String kemu;

    private Integer skscore;

    private Integer sbscore;

    private Integer lkscore;

    private Integer lbscore;
    
    private Integer score;

    private String zkzh;

    private Integer state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStuid() {
        return stuid;
    }

    public void setStuid(Integer stuid) {
        this.stuid = stuid;
    }

    public String getKemu() {
        return kemu;
    }

    public void setKemu(String kemu) {
        this.kemu = kemu == null ? null : kemu.trim();
    }

    public Integer getSkscore() {
        return skscore;
    }

    public void setSkscore(Integer skscore) {
        this.skscore = skscore;
    }

    public Integer getSbscore() {
        return sbscore;
    }

    public void setSbscore(Integer sbscore) {
        this.sbscore = sbscore;
    }

    public Integer getLkscore() {
        return lkscore;
    }

    public void setLkscore(Integer lkscore) {
        this.lkscore = lkscore;
    }

    public Integer getLbscore() {
        return lbscore;
    }

    public void setLbscore(Integer lbscore) {
        this.lbscore = lbscore;
    }

    public String getZkzh() {
        return zkzh;
    }

    public void setZkzh(String zkzh) {
        this.zkzh = zkzh == null ? null : zkzh.trim();
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}
    
}