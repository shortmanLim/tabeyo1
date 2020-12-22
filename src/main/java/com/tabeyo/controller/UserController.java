package com.tabeyo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tabeyo.domain.Criteria;
import com.tabeyo.domain.PageDTO;
import com.tabeyo.domain.UserVO;
import com.tabeyo.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class UserController {
	@Setter(onMethod_=@Autowired)
	private UserService userService;
	
	//id찾기 화면 이동
	@GetMapping("/idFind")		
	public void idFind() { }
	
	//id찾기
	@PostMapping("/idFind")
	public void idFind(String email) {
		
	}
	
	//비밀번호찾기 화면 이동
	@GetMapping("/pwFind")		
	public void pwFind() { }
	
	//비밀번호찾기
	@PostMapping("/pwFind")
	public void pwFind(String UserId, String email) {
		
	}
	
	//소비자 마이페이지
	@GetMapping("/myPage")
	public void myPage(String UserId,Model model) {
		
	}
	
	//사업자 마이페이지
	@GetMapping("/businMyPage")
	public void businMyPage(String UserId, Model model) {	
		
	}
	
	//회원정보수정 페이지 이동
	@GetMapping("/modify")
	public void modify() {}
	//회원정보수정페이지
	@PostMapping("/modify")
	public void modify(String userId, Model model) {
		
	}
	
	//회원 탈퇴
	@PostMapping("/remove")
	public void remove(Model model) {
		
	}
	
	//관리자 마이페이지
	@GetMapping("/adminMyPage")
	@Secured({"ROLE_ADMIN"})		
	public void adminMyPage(Model model) {
		
	}
	
	//전체회원관리페이지
	@GetMapping("/list")//전체 목록 가져오기 
	@Secured({"ROLE_ADMIN"})
	public void list(Criteria cri, Model model) {
		log.info("'UserController...list() with cri : " + cri);
		
		int total = userService.getTotalCount(cri);
		model.addAttribute("list", userService.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(total, cri));
	}
	
	
	
	//회원 강제탈퇴 (관리자권한)
	@PostMapping("/forceRemove")
	public void forceRemove(String userId, Model model) {
		
	}

	//회원 포인트수정(관리자권한)
	@PostMapping("/pointModify")
	public void pointModify(String userId, Long point, Model model) {
		
	}

	
	//회원가입 화면 이동
	/*
	 * @RequestMapping(value="/register", method=RequestMethod.GET) public void
	 * register() { log.info("register get...."); }
	 */
	@GetMapping("/register")
	public void register() { 
		log.info("register get...."); 
		}
	
	//회원가입 처리
	@PostMapping("/register")		
	public String register(UserVO userVO) {
		log.info("register post : " + userVO.getUserId()+","+userVO.getUserPw());
		userService.register(userVO);
		return "redirect:/";
	}
}