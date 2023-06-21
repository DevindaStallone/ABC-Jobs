package com.demo.contoller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjobs.service.UsersService;
import com.demo.model.User;
import com.demo.model.UserDto;
import com.demo.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	public UserService userService;

	/*
	 * mapping url for the login page and connect it to the database
	 * */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("loginDto", new UserDto());

		return mav;
	}

	/*
	 * retrieve input email and password from user
	 * and will be check against data in database
	 * then validate the role and set up session
	 * */
	@RequestMapping(value = "/check", method = RequestMethod.POST)
    public ModelAndView loginUser(@ModelAttribute ("loginDto") UserDto loginDto, HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession();
        
        if(loginDto.getEmailId().equals("admin@gmail.com") & loginDto.getPassword().equals("admin123")){
        	
        	return new ModelAndView("redirect:adminDashboard");
        } 
        		
        		
        User userResponse = userService.loginUser(loginDto);
        
            session.setAttribute("userId", userResponse.getUserID());
            session.setAttribute("email", userResponse.getEmail());
            return new ModelAndView("redirect:profile");
    }
	
	/*
	 * logout controller, to invalidate the session
	 * and goes back to landing page
	 * */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
		session.invalidate();
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/backtologin", method = RequestMethod.GET)
	public ModelAndView backtologin(HttpServletRequest request) {
        HttpSession session = request.getSession();
		session.invalidate();
		return new ModelAndView("redirect:login");
	}
	@RequestMapping(value = "/forgot-password", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("forgot-password");
		mav.addObject("user", new User());

		return mav;
	}
	
	@RequestMapping(value = "/change_password", method = RequestMethod.GET)
	public ModelAndView showchangepassword(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("change_password");
		mav.addObject("user", new User());

		return mav;
	}
	/*@RequestMapping(value="/reset", method = RequestMethod.POST) // reset password
	public String reset(@RequestParam("password") String password, Model model, HttpSession session) throws Exception {
		try {
			userService.updatePassword(password, (String) session.getAttribute("email"));
			
			
		} catch (Exception e) {
			System.out.println(e);
			return "redirect:change_password";
		}
		
		return "redirect:login";
	}
	
	
	
	@RequestMapping(value="/forgot-password", method = RequestMethod.POST) // forgot password logic
	public String forgotPassword(@RequestParam("email") String email, Model model, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		String findByEmail = userService.findByEmail(email);
		
		if(findByEmail != null) {
			
			session.setAttribute("email", email);
			return "redirect:change_password";
		}
				
		
		return "redirect:forgot-password";
	}
	
	
	
*/
}
