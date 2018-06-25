package com.km.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class memberListController {
	
	@RequestMapping("km_memberNotice")
	public String memberNotice(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

		return "km_member/list/memberNotice";
	}
	
	
	
	@RequestMapping("km_memberInfo")
	public String memberInfo(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "km_member/list/memberInfo";
	}
	
	
	
	@RequestMapping("km_memberFree")
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
	
	
	
	@RequestMapping("km_attackMovie")
	public String attackMovie(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "km_member/list/attackMovie";
	}
	
	
	
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
	
	
	
	@RequestMapping("km_memberPhoto")
	public String memberPhoto(HttpServletRequest request, HttpServletResponse response) {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		return "km_member/list/memberPhoto";
	}
	
}