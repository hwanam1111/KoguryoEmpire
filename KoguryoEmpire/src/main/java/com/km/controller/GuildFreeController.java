package com.km.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GuildFreeController {
	

	
	@RequestMapping("km_freeList")
	public String memberFree(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "km_member/list/memberFree";
	}
	
	
	@RequestMapping("km_freeWirte")
	public String freeWirte() {
		
		
		return "km_member/write/freeWirte";
	}
	
	
	@RequestMapping("km_freeView")
	public String freeView() {

		return "km_member/view/freeView";
	}
	
}