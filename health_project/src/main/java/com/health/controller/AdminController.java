package com.health.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.health.siteUtil.SiteUtil;

@Controller
public class AdminController {
	
	@RequestMapping("/admin/AdminAccess")
	public String adminAccess(HttpSession session) {
//		if (session.getAttribute("adminCheck") == null) {
//		  
//		return "redircet:/"; }
		 
		return "admin/admin";
		
	}
	
	
	@RequestMapping(value="/admin/AccessForSiteClose", method=RequestMethod.POST)
	public String SiteClose() {
//		if (session.getAttribute("adminCheck") == null) {
//		  
//		return "redircet:/"; }
		SiteUtil.setSiteOpen(false);
		return "redirect:/admin/AdminAccess";
	}
	@RequestMapping(value="/admin/AccessForSiteOpen", method=RequestMethod.POST)
	public String SiteOpen() {
//		if (session.getAttribute("adminCheck") == null) {
//		  
//		return "redircet:/"; }
		SiteUtil.setSiteOpen(true);
		return "redirect:/";
	}

}
