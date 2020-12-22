package com.tabeyo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import com.tabeyo.domain.Criteria;
import com.tabeyo.domain.UserAttachVO;
import com.tabeyo.domain.UserVO;
import com.tabeyo.mapper.UserAttachMapper;
import com.tabeyo.mapper.UserMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class UserServiceImpl implements UserService {

	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;

	
	@Setter(onMethod_ = @Autowired) 
	private UserAttachMapper userAttachMapper;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwEncoder;
	

	// 회원첨부파일목록
	
	  @Override public List<UserAttachVO> getAttachList(String userId) { 
		  
	return null; }
	 

	// ID찾기
	@Override
	public void idFind(String email) {
		// TODO Auto-generated method stub
	}

	// PW찾기
	@Override
	public void pwFind(String userId, String email) {
		// TODO Auto-generated method stub
	}

	// 회원가입
	@Transactional
	@Override
	public void register(UserVO userVO) {
		userVO.setUserPw(pwEncoder.encode(userVO.getUserPw()));//인코딩 기능
		userMapper.insert(userVO);
		if(userMapper.read(userVO.getUserId()).getUserId()!=null) {
		userMapper.insertAuth(userVO.getUserId());	//회원가입 후, 회원가입한 계정에 권한부여(기본값 'ROLE_USER')
		}
	}

	// 회원정보조회
	@Override
	public void read(String userId) {
		log.info("userServiceImpl...get()");
		UserVO userVO = userMapper.read(userId);
		userVO.getAuthList().forEach(authVO -> log.info(authVO));
	}

	// 회원정보수정
	@Transactional
	@Override
	public boolean modify(UserVO user) {
		log.info("userServiceImpl...modify()");
		//userAttachMapper.deleteAll(user.getAttachList());// 기존 첨부파일 삭제 보드에서 보드넘버를 꺼내서

		boolean modifyResult = userMapper.update(user) == 1;// 회원정보 수정

		// 회원정보 수정에 성공하고 첨부파일 목록이 있으면
		/*
		 * if (modifyResult && user.getAttachList() != null &&
		 * user.getAttachList().size() > 0) { user.getAttachList().forEach(attach -> {
		 * attach.setUserId(user.getUserId()); userAttachMapper.insert(attach);// 첨부파일
		 * 등록 });
		 
		} */
		return modifyResult;
	}

	// 회원탈퇴
	@Override
	public boolean remove(UserVO user) {
		log.info("userServiceImpl...remove()");

		//userAttachMapper.deleteAll(user.getAttachList());

		return userMapper.delete(user.getUserId()) == 1;
	}

	// 회원정보관리
	@Override
	public List<UserVO> getList(Criteria cri) {
		log.info("userServiceImpl...getList() with criteria : " + cri);
		return userMapper.getUserListWithPaging(cri);
	}

	// 회원 포인트수정(관리자권한)
	@Override
	public boolean pointModify(String userId, Long point, Model model) {
		// TODO Auto-generated method stub
		return false;
	}

	// 회원 강제탈퇴(관리자권한)
	@Override
	public boolean forceRemove(String userId, Model model) {
		// TODO Auto-generated method stub
		return false;
	}

	//회원수 얻기
	@Override
	public int getTotalCount(Criteria cri) {
		log.info("BoardServiceImpl...getTotalCount()");
		return userMapper.getTotalCount(cri);
	}


}