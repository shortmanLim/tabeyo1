package com.tabeyo.security.domain;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import com.tabeyo.domain.UserVO;

import lombok.Getter;

@Getter
public class CustomUser extends User {
	
	private static final long serialVersionUID = 1L;
	private UserVO user;
	
	public CustomUser(String userId, String userPw, Collection<? extends GrantedAuthority> authorities) {
		super(userId, userPw, authorities);
	}
	
	public CustomUser(UserVO vo) {
		super(vo.getUserId(), vo.getUserPw(), 
				vo.getAuthList().stream().map(auth -> new SimpleGrantedAuthority(auth.getAuth()))
											.collect(Collectors.toList()));
		
		this.user = vo;
	}

}
