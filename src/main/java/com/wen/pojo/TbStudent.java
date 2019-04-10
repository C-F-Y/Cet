package com.wen.pojo;

public class TbStudent {
    private Integer id;

    private String xuehao;

    private String name;

    private String sex;

    private String idcardnum;

    private String school;

    private String xiaoqu;

    private String xueyuan;

    private String zhuanye;

    private String banji;

    private String xuezhi;

    private String ruxuetime;

    private String phone;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getXuehao() {
        return xuehao;
    }

    public void setXuehao(String xuehao) {
        this.xuehao = xuehao == null ? null : xuehao.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getIdcardnum() {
        return idcardnum;
    }

    public void setIdcardnum(String idcardnum) {
        this.idcardnum = idcardnum == null ? null : idcardnum.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getXiaoqu() {
        return xiaoqu;
    }

    public void setXiaoqu(String xiaoqu) {
        this.xiaoqu = xiaoqu == null ? null : xiaoqu.trim();
    }

    public String getXueyuan() {
        return xueyuan;
    }

    public void setXueyuan(String xueyuan) {
        this.xueyuan = xueyuan == null ? null : xueyuan.trim();
    }

    public String getZhuanye() {
        return zhuanye;
    }

    public void setZhuanye(String zhuanye) {
        this.zhuanye = zhuanye == null ? null : zhuanye.trim();
    }

    public String getBanji() {
        return banji;
    }

    public void setBanji(String banji) {
        this.banji = banji == null ? null : banji.trim();
    }

    public String getXuezhi() {
        return xuezhi;
    }

    public void setXuezhi(String xuezhi) {
        this.xuezhi = xuezhi == null ? null : xuezhi.trim();
    }

    public String getRuxuetime() {
        return ruxuetime;
    }

    public void setRuxuetime(String ruxuetime) {
        this.ruxuetime = ruxuetime == null ? null : ruxuetime.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

	@Override
	public String toString() {
		return "TbStudent [id=" + id + ", xuehao=" + xuehao + ", name=" + name + ", sex=" + sex + ", idcardnum="
				+ idcardnum + ", school=" + school + ", xiaoqu=" + xiaoqu + ", xueyuan=" + xueyuan + ", zhuanye="
				+ zhuanye + ", banji=" + banji + ", xuezhi=" + xuezhi + ", ruxuetime=" + ruxuetime + ", phone=" + phone
				+ "]";
	}
    
}