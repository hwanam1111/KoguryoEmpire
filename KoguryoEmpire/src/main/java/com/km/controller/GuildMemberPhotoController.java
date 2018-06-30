package com.km.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GuildMemberPhotoController {
	

	@RequestMapping("km_mbPhotoList")
	public String memberPhoto(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "km_common/readyMessage";
//		return "km_member/list/memberPhoto";
	}
	
	
	@RequestMapping("km_mbPhotoWrite")
	public String mbPhotoWrite() {
		
		
		return "km_member/write/mbPhotoWrite";
	}
	
	
	@RequestMapping("km_mbPhotoView")
	public String mbPhotoView() {

		return "km_member/view/mbPhotoView";
	}
	
	
}