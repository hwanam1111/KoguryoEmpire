package com.km.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class JoinController {
	
	@RequestMapping("km_joinNotice")
	public String joinNotice() {
		
		return "km_guildJoin/joinNotice";
	}
	
	
	@RequestMapping("km_joinTest")
	public String joinText() {
		
		return "km_guildJoin/joinTest";
	}
	
	
	@RequestMapping("km_joinCheck")
	public String joinCheck() {
		
		return "km_guildJoin/joinCheck";
	}
	
	
	@RequestMapping("km_joinRequest")
	public String joinRequest() {
		
		return "km_guildJoin/joinRequest";
	}
	
	
	@RequestMapping("km_joinRecommend")
	public String joinRecommend() {
		
		return "km_guildJoin/joinRecommend";
	}
	
	
	
}
