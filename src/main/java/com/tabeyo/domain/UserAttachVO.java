package com.tabeyo.domain;

import lombok.Data;

@Data
public class UserAttachVO {
	
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	private Long rvNo;

}
