package com.tabeyo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tabeyo.domain.UserVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/test/*")
public class TestController {
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public void register() { 
		log.info("register get....");
	}
	
	
	//회원가입 처리
	@RequestMapping(value="/register", method=RequestMethod.POST)		
	public void register(UserVO user, Model model) {
		log.info("register post : " + user.getUserId());
		//userService.register(user);
	}
}
