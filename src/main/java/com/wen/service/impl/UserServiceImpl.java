package com.wen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wen.mapper.TbUserMapper;
import com.wen.pojo.TbUser;
import com.wen.pojo.TbUserExample;
import com.wen.pojo.TbUserExample.Criteria;
import com.wen.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private TbUserMapper userMapper;
	
	@Override
	public List<TbUser> selectUserByUsername(String username) {
		
		TbUserExample example = new TbUserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUsernameEqualTo(username);
		return userMapper.selectByExample(example);
		
	}

	@Override
	public Integer addUser(TbUser user) {
		return userMapper.insertSelective(user);
	}

	@Override
	public void updateState(String code) {
		TbUser record = new TbUser();
		record.setState(2);
		TbUserExample example = new TbUserExample();
		Criteria criteria = example.createCriteria();
		criteria.andCodeEqualTo(code);
		
		userMapper.updateByExampleSelective(record, example);
	}

	@Override
	public void updateUser(TbUser user) {
		userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public TbUser selectUserById(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}
	
	

}
