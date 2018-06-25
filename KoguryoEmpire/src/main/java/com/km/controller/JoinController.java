package com.km.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.km.dto.JoinVO;
import com.km.service.JoinService;



@Controller
public class JoinController {
	
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	@Inject
    private JoinService service;
	
	
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
	
	
	@RequestMapping("km_guildJoinOk")
	public String joinOk(Locale locale, Model model, JoinVO vo) throws Exception {
		
		logger.info("길드가입 처리 확인");
		
		int resultCnt = service.guildJoin(vo);
		String result = "";

		if ( resultCnt == 0 ){
			result = "실패당";
	    } else {
	        result = "성공이당";
	    }
			
		model.addAttribute("result", result);
		model.addAttribute("vo", vo);
		
		return "km_guildJoin/joinRequestOk";
	}
	
	
	
}
