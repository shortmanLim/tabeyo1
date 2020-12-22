package com.tabeyo.domain;

import lombok.Data;

@Data
public class ReviewAttachFileDTO {
	private String fileName;	//원본파일명
	private String uploadPath;	//업로드경로
	private String uuid;		//UUID값
	private boolean image;		//이미지여부

}
