package com.tabeyo.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth)
			throws IOException, ServletException {
		log.warn("로그인성공");
		
		List<String> roleNames = new ArrayList<String>();
		
		auth.getAuthorities().forEach(authority -> {	//사용자권한들을 롤네임즈에 저장
			roleNames.add(authority.getAuthority());
		});
		
		log.warn("ROLE NAME : " + roleNames);
		
		  if(roleNames.contains("ROLE_ADMIN")) {//ROLE이 ROLE_ADMIN이면
		  response.sendRedirect("/"); return; }
		  
		  if(roleNames.contains("ROLE_USER")) {//ROLE이 ROLE_MEMBER이면
		  response.sendRedirect("/"); return; }
		 
		response.sendRedirect("/");
		
	}

}
