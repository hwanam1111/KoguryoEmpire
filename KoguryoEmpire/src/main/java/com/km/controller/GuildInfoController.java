package com.km.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GuildInfoController {
	

	@RequestMapping("km_infoList")
	public String memberInfo(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "km_common/readyMessage";
//		return "km_member/list/memberInfo";
	}
	
	
	@RequestMapping("km_infoView")
	public String infoView() {

		return "km_member/view/infoView";
	}
	
	
	@RequestMapping("km_infoWrite")
	public String infoWrite() {
		
		
		return "km_member/write/infoWrite";
	}
	
}