package com.health.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.health.siteUtil.SiteUtil;

@Controller
public class UtilController {

	
	@RequestMapping("/siteClose")
	public String siteClose() {
		/*if (SiteUtil.isSiteOpen()) {
			return "redircet:/!)(*@&#()*!@#^&(!@^#!@&#^@!*&^";
		}else {*/
			return "util/siteClose";
			/* } */
		
		
	}
}
