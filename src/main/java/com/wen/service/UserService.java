package com.wen.service;

import java.util.List;

import com.wen.pojo.TbUser;

public interface UserService {
	
	public List<TbUser> selectUserByUsername(String username);
	
	public Integer addUser(TbUser user);

	public void updateState(String code);

	public void updateUser(TbUser user);

	public TbUser selectUserById(Integer id);
}
