package com.km.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GuildNoticeController {
	
	@RequestMapping("km_noticeList")
	public String memberNotice(HttpServletRequest request, HttpServletResponse response) {
//		try {
//            if(request.getSession().getAttribute("login") == null ){
//            	
//            	return "km_common/returnMessage";
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

		return "km_member/list/memberNotice";
	}
	
	
	@RequestMapping("km_noticeView")
	public String noticeView() {

		return "km_member/view/noticeView";
	}
	
	@RequestMapping("km_noticeWrite")
	public String noticeWrite() {
		
		
		return "km_member/write/noticeWrite";
	}
}