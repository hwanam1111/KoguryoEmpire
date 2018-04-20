package com.km.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class memberListController {
	
	@RequestMapping("km_memberNotice")
	public String memberNotice() {
		
		
		return "km_member/list/memberNotice";
	}
	
	@RequestMapping("km_memberInfo")
	public String memberInfo() {
		
		
		return "km_member/list/memberInfo";
	}
	
	@RequestMapping("km_memberFree")
	public String memberFree() {
		
		
		return "km_member/list/memberFree";
	}
	
	@RequestMapping("km_attackMovie")
	public String attackMovie() {
		
		
		return "km_member/list/attackMovie";
	}
	
	@RequestMapping("km_attackPhoto")
	public String attackPhoto() {
		
		
		return "km_member/list/attackPhoto";
	}
	
	@RequestMapping("km_memberPhoto")
	public String memberPhoto() {
		
		
		return "km_member/list/memberPhoto";
	}
	
}