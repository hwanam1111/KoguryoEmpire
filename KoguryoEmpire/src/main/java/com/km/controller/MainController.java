package com.km.controller;

import java.util.List;

import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;

import com.km.dto.MemberVO;
import com.km.service.MemberService;



@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
    private MemberService service;
	
	
	@RequestMapping(value = "km_main", method = RequestMethod.GET)
    public String home(Locale locale, Model model) throws Exception{
		
		System.out.println(" test :: !!! ");
 
        logger.info("home");
        
        List<MemberVO> memberList = service.selectMember();
        
        model.addAttribute("memberList", memberList);
 
        return "km_main/main";
    }



//	@RequestMapping("km_main")
//	public String main() {
//		System.out.println(" test :: !!! ");
//		return "km_main/main";
//	}
	
	
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