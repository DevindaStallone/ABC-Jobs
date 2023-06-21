package com.demo.contoller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.demo.model.User;
import com.demo.service.UserService;

@Controller
public class ProfileController {
	
	@Autowired
	public UserService userService;
	
	/*
	 * controller for see admin profile
	 * get the session and retrieve data from database
	 * */
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView seeProfile(HttpServletRequest request) throws Exception{
		ModelAndView model = new ModelAndView();
        HttpSession session = request.getSession(true);
        Integer userId = (int)session.getAttribute("userId");

        User user = userService.findUserById(userId);

			model.addObject("user", user);
			model.setViewName("userprofile");
		
		return model;
	}
	
	/*
	 * controller for retrieve data that will be edit
	 * goes to edit form
	 * */
	@RequestMapping(value = "/updateprofile/{id}", method = RequestMethod.GET)
	public ModelAndView editUser(@PathVariable int id, ModelAndView model, HttpServletRequest request) {
		request.getSession(true);

        User listuser = userService.findUserById(id);
		
			model.addObject("user", listuser);
			model.setViewName("updateform");
		
		
		
		return model;
	}
	
	/*
	 * controller for collecting the edited data
	 * passed it to database
	 * goes back to dashboard
	 * */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateUser(
			@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			@RequestParam("about") String about,@RequestParam("gender") String gender,
			@RequestParam("country") String country,@RequestParam("mobilenumber") String mobilenumber,
			@RequestParam("userID") Integer userID) {

		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setAbout(about);
		user.setGender(gender);
		user.setCountry(country);
		user.setMobilenumber(mobilenumber);
		
		user.setUserID(userID);
	
		userService.updateProfile(user);

		return new ModelAndView("redirect:/profile");
	}
	@RequestMapping("/search-result")
    public String viewHomePage(Model model, @Param("keyword") String keyword) {
        List<User> listStore = userService.listAll(keyword);
        model.addAttribute("allStore", listStore);
        model.addAttribute("keyword", keyword);
         
        return "search-result";
    }
	@RequestMapping("/search-result")
	public ModelAndView admin() {
		List<User> listStore = userService.listAll();
		ModelAndView mav = new ModelAndView("search-result");
		mav.addObject("allStore", listStore);
		System.out.print(" List Obj is "+ listStore);
		return mav;
	}
	@RequestMapping(value = "/search-result", method = RequestMethod.POST)
	public ModelAndView search(
			@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			@RequestParam("about") String about,@RequestParam("gender") String gender,
			@RequestParam("country") String country,@RequestParam("mobilenumber") String mobilenumber,
			@RequestParam("userID") Integer userID) {

		User user = new User();
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setAbout(about);
		user.setGender(gender);
		user.setCountry(country);
		user.setMobilenumber(mobilenumber);
		
		user.setUserID(userID);
	
		userService.updateProfile(user);

		return new ModelAndView("redirect:/profile");
	}
}
