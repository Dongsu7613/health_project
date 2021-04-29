package com.health.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.health.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService service;
	
	// 인덱스 페이지
	@RequestMapping("/")
	public String Index() {
		
		return "user/index";
	}
	
	// 루트 페이지 접근
	@RequestMapping("/user/rootAccess")
	public String rootAccess() {
		
		return "user/root";
	}
	// 회원가입 페이지 접근 
	@RequestMapping("/user/newMember")
	public String newMember() {
		
		return "user/newMember";
	}
	
	@RequestMapping(value="/user/loginCheck", method = RequestMethod.POST)
	public String login(String userId,String userPw) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		// db 연결 -------------------------------------------------
		if (userId.equals("admin1234") && userPw.equals("1234")) {
			// 관리자일 경우 관리자 페이지로 보냄
			return "admin/admin";
		}
		
		return "user/root";
	}
	
	
	
}
