package com.health.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TeacherDTO {

	private String bid;
	private String tid;
	private String tname;
	private String subject;
	private String introduce;
	private String area;
	private String license;
//	tdate >> 강사 등록일
	private String tdate;
	private String fileName;
//	private String review; >> 아이디로 리뷰 끌고오기
	private String grade;
	
}
