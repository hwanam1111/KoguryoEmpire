package com.km.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GuildAttackPhotoController {
	
	
	@RequestMapping("km_attackPhoto")
	public String attackPhoto(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "km_member/list/attackPhoto";
	}
	
	
	@RequestMapping("km_atPhotoWrite")
	public String atPhotoWrite() {
		
		
		return "km_member/write/atPhotoWrite";
	}
	
	
	@RequestMapping("km_atPhotoView")
	public String atPhotoView() {

		return "km_member/view/atPhotoView";
	}
	
}