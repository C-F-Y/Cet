package com.wen.mapper;

import com.wen.pojo.TbNotice;
import com.wen.pojo.TbNoticeExample;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
@Mapper
public interface TbNoticeMapper {
    int countByExample(TbNoticeExample example);

    int deleteByExample(TbNoticeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbNotice record);

    int insertSelective(TbNotice record);

    List<TbNotice> selectByExample(TbNoticeExample example);

    TbNotice selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbNotice record, @Param("example") TbNoticeExample example);

    int updateByExample(@Param("record") TbNotice record, @Param("example") TbNoticeExample example);

    int updateByPrimaryKeySelective(TbNotice record);

    int updateByPrimaryKey(TbNotice record);
}