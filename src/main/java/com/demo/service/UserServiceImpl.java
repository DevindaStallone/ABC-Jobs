package com.demo.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjobs.model.Users;
import com.demo.dao.UserDao;

import com.demo.model.User;
import com.demo.model.UserDto;

import com.demo.repo.UserDtoRepository;
import com.demo.repo.UserRepository;

@Transactional
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	
	


	public User register(User user) {
		return userRepo.save(user);
	}


	public User loginUser(UserDto loginDto) {
		User user = userRepo.findByEmailAndPass(loginDto.getEmailId(), loginDto.getPassword());
		System.out.println(user);
		if (user == null) {
			return null;
		}
		return user;
	}

	public void updateProfile(User user) {
		User newUser = userRepo.findByUserID(user.getUserID());
		newUser.setFirstName(user.getFirstName());
		newUser.setLastName(user.getLastName());
		newUser.setAbout(user.getAbout());
		newUser.setGender(user.getGender());
		newUser.setCountry(user.getCountry());
		newUser.setMobilenumber(user.getMobilenumber());
		
		userRepo.save(newUser);
	}
	public User findUserById(int id) {
		return userRepo.findByUserID(id);
	}

	public List<User> listAll() {
		return (List<User>) userRepo.findAll();
	}
	
	public User get(Long id) {
		return userRepo.findById(id).get();
	}
	
	public void delete(Integer id) {
		userRepo.deleteByUserID(id);
	}
	
	public List<User> listAll(String keyword) {
        if (keyword != null) {
            return userRepo.search(keyword);
        }
        return userRepo.findAll();
    }
	
	public List<User> findAllUser(){
		List<User> users = userRepo.findAll();
		return users;
	}
	public String findByEmail(String email) {
		return userRepo.findByEmail(email);
	}
	
	public User updatePassword(String password, String email) {
		Long userId = Long.parseLong(userRepo.findByEmail(email).split(",")[0]);
		User user = userRepo.findById(userId).get();
		
		// update 
		user.setPass(password);
		
		// save
		return userRepo.save(user);
	}
	

}
