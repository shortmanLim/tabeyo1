package com.tabeyo.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Criteria {	//페이지번호와 한페이지당 글갯수?
	private int pageNum;	//페이지번호
	private int amount;		//한페이지당 출력게시물수
	private String type;	//검색타입(제목/내용/제목+내용)
	private String keyword;	//검색어
	
	public Criteria() {
		//기본페이지번호는 1번, 게시물수는 10개로 지정
		pageNum=1;
		amount=10;
	}
	
	public Criteria(int pageNum, int amount) {
		//기본페이지번호는 1번, 게시물수는 10개로 지정
		this.pageNum=pageNum;
		this.amount=amount;
	}
	
	//검색타입 배열로 처리
	public String[] getTypeArr(){
		return type == null ? new String[] {} : type.split("");
	}
	
	public String getListLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword",this.getKeyword());
		
		return builder.toUriString();
	}

}
