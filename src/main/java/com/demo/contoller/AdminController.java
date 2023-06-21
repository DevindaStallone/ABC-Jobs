package com.demo.contoller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.demo.mailsender.EmailSenderService;
import com.demo.model.BulkEmail;
import com.demo.model.User;
import com.demo.model.UserDto;
import com.demo.service.UserService;


@Controller
public class AdminController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	EmailSenderService emailService;
	
	
	@RequestMapping("/adminDashboard")
	public ModelAndView admin() {
		List<User> listStore = userService.listAll();
		ModelAndView mav = new ModelAndView("adminDashboard");
		mav.addObject("allStore", listStore);
		System.out.print(" List Obj is "+ listStore);
		return mav;
	}
	
	
	
	@RequestMapping(value = "/adminupdateprofile/{id}", method = RequestMethod.GET)
	public ModelAndView admineditUser(@PathVariable int id, ModelAndView model, HttpServletRequest request) {
		request.getSession(true);

        User listuser = userService.findUserById(id);
		
			model.addObject("user", listuser);
			model.setViewName("Admin_editUser");
		
		
		
		return model;
	}
	
	/*
	 * controller for collecting the edited data
	 * passed it to database
	 * goes back to dashboard
	 * */
	
	
	@RequestMapping(value = "/adminDashboard", method = RequestMethod.POST)
	public ModelAndView adminupdateUser(
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

		return new ModelAndView("redirect:/adminDashboard");
	}
	
	@RequestMapping("/delete")
	public String deleteUser(@RequestParam int id) {
		userService.delete(id);
		return "redirect:/adminDashboard";		
	}
	
	@RequestMapping("/search")
    public String viewHomePage(Model model, @Param("keyword") String keyword) {
        List<User> listStore = userService.listAll(keyword);
        model.addAttribute("allStore", listStore);
        model.addAttribute("keyword", keyword);
         
        return "adminDashboard";
    }
	
	// Send Bulk Email page
		@RequestMapping("/send-bulk-email")
		public ModelAndView sendBulkEmailPage(HttpSession session) {
			ModelAndView mv = new ModelAndView();
			
			
				BulkEmail bulkEmail = new BulkEmail();
				mv.addObject("bulkEmail", bulkEmail);
			
			
			mv.setViewName("bulkEmail");
			
			return mv;
		}
	
	
	
	// Send Bulk Email
		@RequestMapping("/sendBulkEmail")
		public String sendBulkEmail(@ModelAttribute("bulkEmail") BulkEmail bulkEmail) {
			List<User> listUser = userService.findAllUser();
			
			for(User user : listUser) {
				emailService.sendEmail(user.getEmail(), bulkEmail.getSubject(), bulkEmail.getContent());
			}
			
			return "redirect:/adminDashboard";
		}
	
}
