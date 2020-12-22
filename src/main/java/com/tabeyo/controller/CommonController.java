package com.tabeyo.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
//	@PostMapping("/customLogout")
//	public void logoutPost() {
//		log.info("custom Logout - POST");
//	}
	
	@GetMapping("/logout")
	public void logoutGet() {
		log.info("custom Logout - GET");
	}
	
	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error", "로그인 에러! 계정을 확인해 주세요");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "로그아웃 완료!");
		}
	}
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("access denied : " + auth);
		model.addAttribute("msg", "Access Denied");
	}
}