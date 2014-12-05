package com.bedrosians.bedlogic.web.controller;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bedrosians.bedlogic.exception.DataOperationException;

public class HomeController {

	@RequestMapping(value = { "/", "/.", "/home**", "/welcome**" }, method = RequestMethod.GET)
	public String welcomePage() {
		return "login.jsp";
 
	}
 
	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {
 
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security Custom Login Form");
		model.addObject("message", "This is protected page!");
		model.setViewName("admin");
 
		return model;
 
	}
 
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
		                      @RequestParam(value = "logout", required = false) String logout) {
 
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}
 
		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("ims/index");
 
		return model;
 
	}
	
	@ExceptionHandler(DataOperationException.class)
	public ModelAndView handleDataOperationException(DataOperationException ex) {
 
		ModelAndView model = new ModelAndView("/exception/exception");
		model.addObject("errorCode", ex.getErrorCode());
		model.addObject("errorMessage", ex.getErrorMessage());
		model.addObject("error", ex.getError());
 
		return model;
 	}
 
	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex) {
 
		ModelAndView model = new ModelAndView("error/generic_error");
		model.addObject("errMsg", "this is Exception.class");
 
		return model;
 
	}
 
}
