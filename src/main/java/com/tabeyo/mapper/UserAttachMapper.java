package com.tabeyo.mapper;

import java.util.List;

import com.tabeyo.domain.UserAttachVO;

public interface UserAttachMapper {
	
	public void insert(UserAttachVO vo);
	public void delete(String uuid);
	public List<UserAttachVO> findByRvNo(Long rvNo);
	public void deleteAll(Long rvNo);
	public List<UserAttachVO> getOldFiles();

}
