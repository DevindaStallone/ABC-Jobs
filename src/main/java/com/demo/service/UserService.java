package com.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.abcjobs.model.Users;
import com.abcjobs.repository.UsersRepository;
import com.demo.model.User;
import com.demo.model.UserDto;

public interface UserService {
	
	public User register(User user);
	
	public User loginUser(UserDto loginDto);

	public void updateProfile(User user);

	public User findUserById(int id);
	
	public List<User> listAll();
	
	public User get(Long id);
	
	public void delete(Integer id);
		
	public List<User> listAll(String keyword);
	
	public List<User> findAllUser();

	public User updatePassword(String password, String attribute);

	public String findByEmail(String email);
	
}


