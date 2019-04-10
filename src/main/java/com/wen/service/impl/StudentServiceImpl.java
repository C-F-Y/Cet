package com.wen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wen.mapper.TbStudentMapper;
import com.wen.pojo.QueryVo;
import com.wen.pojo.TbStudent;
import com.wen.pojo.TbStudentExample;
import com.wen.pojo.TbStudentExample.Criteria;
import com.wen.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService {
	@Autowired
	private TbStudentMapper studentMapper;
	
	@Override
	public List<TbStudent> selectStudent(TbStudent student) {
		
		TbStudentExample example = new TbStudentExample();
		Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(student.getName());
		criteria.andIdcardnumEqualTo(student.getIdcardnum());
		return studentMapper.selectByExample(example);
		
	}

	@Override
	public void updateStudentById(TbStudent student) {
//		studentMapper.updateByPrimaryKey(student);
		studentMapper.updateByPrimaryKeySelective(student);
	}

	@Override
	public TbStudent selectStudentById(Integer id) {
		return studentMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<QueryVo> queryStudentByQueryVo(QueryVo vo) {
		return studentMapper.queryStudentByQueryVo(vo);
	}

	@Override
	public void insertStudentList(List<TbStudent> studentList) {
		for(TbStudent student : studentList){
			List<TbStudent> studentList2 = selectStudent(student);
			if(studentList2!=null && studentList2.size()>0){
				System.out.println("姓名为："+student.getName()+",身份证号码为："+student.getIdcardnum()+" 的学生信息已存在");
			}else{
				studentMapper.insertSelective(student);
			}
		}
	}

}
