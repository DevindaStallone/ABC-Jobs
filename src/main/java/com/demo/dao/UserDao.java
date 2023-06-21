package com.demo.dao;

import java.util.List;

import com.demo.model.User;
import com.demo.model.UserDto;

public interface UserDao {

	public int register(User user);
	
	public User login(UserDto loginDto);
	
	public int updateProfile(User user);
	
	public List<User> findUserById(int id);

}
