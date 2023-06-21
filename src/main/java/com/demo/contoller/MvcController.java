package com.demo.contoller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.dao.UserDaoImpl;
import com.demo.model.User;
import com.demo.service.UserService;
import com.demo.service.UserServiceImpl;





@Controller
public class MvcController {
	
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home()
	{
		return "confirm";
	}
	
	
	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public String jobs()
	{
		return "jobs";
	}
	
	
	
}
