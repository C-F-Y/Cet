package com.wen.mapper;

import com.wen.pojo.TbSchool;
import com.wen.pojo.TbSchoolExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface TbSchoolMapper {
	int countByExample(TbSchoolExample example);

    int deleteByExample(TbSchoolExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbSchool record);

    int insertSelective(TbSchool record);

    List<TbSchool> selectByExample(TbSchoolExample example);

    TbSchool selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbSchool record, @Param("example") TbSchoolExample example);

    int updateByExample(@Param("record") TbSchool record, @Param("example") TbSchoolExample example);

    int updateByPrimaryKeySelective(TbSchool record);

    int updateByPrimaryKey(TbSchool record);
    
    public List<TbSchool> selectschool();
	public List<TbSchool> selectxueyuan();
	public List<TbSchool> selectzhuanye();
	public List<TbSchool> selectbanji();
}