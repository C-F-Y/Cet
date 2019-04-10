package com.wen.mapper;

import com.wen.pojo.TbExaminationInfo;
import com.wen.pojo.TbExaminationInfoExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface TbExaminationInfoMapper {
    int countByExample(TbExaminationInfoExample example);

    int deleteByExample(TbExaminationInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbExaminationInfo record);

    int insertSelective(TbExaminationInfo record);

    List<TbExaminationInfo> selectByExample(TbExaminationInfoExample example);

    TbExaminationInfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbExaminationInfo record, @Param("example") TbExaminationInfoExample example);

    int updateByExample(@Param("record") TbExaminationInfo record, @Param("example") TbExaminationInfoExample example);

    int updateByPrimaryKeySelective(TbExaminationInfo record);

    int updateByPrimaryKey(TbExaminationInfo record);
}