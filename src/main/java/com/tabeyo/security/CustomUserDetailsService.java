package com.tabeyo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.tabeyo.domain.UserVO;
import com.tabeyo.mapper.UserMapper;
import com.tabeyo.security.domain.CustomUser;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsService implements UserDetailsService{
	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;  
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException{
		log.warn("Load User By UserName : " + userName);
		
		//유저네임이 유저아이디
		 UserVO vo = userMapper.read(userName);
		 
		 log.warn("queried by user mapper : " + vo);
		return vo == null ? null : new CustomUser(vo);
	}//END loadUserByUsername()
	
}
