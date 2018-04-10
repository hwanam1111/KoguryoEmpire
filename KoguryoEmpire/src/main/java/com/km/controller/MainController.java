package com.km.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("km_main")
	public String main() {
		
		return "km_main/main";
	}
	
	
	@RequestMapping("km_login")
	public String login() {
		
		return "km_main/login";
	}
	
	
	@RequestMapping("km_join")
	public String join() {
		
		return "km_main/join";
	}
	
	
	@RequestMapping("joinFormOk")
	public String joinFormOk() {
		
		return "";
	}
	
	
}