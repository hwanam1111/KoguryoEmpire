package com.km.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class GuildAttackMovieController {
	
	@RequestMapping("km_atMovieList")
	public String attackMovie(HttpServletRequest request, HttpServletResponse response) {
		
		return "km_common/readyMessage";
//		return "km_member/list/attackMovie";
	}
	
	
	@RequestMapping("km_atMovieView")
	public String atMovieView() {

		return "km_member/view/atMovieView";
	}
	
	
	@RequestMapping("km_atMovieWrite")
	public String atMovieWrite() {
		
		
		return "km_member/write/atMovieWrite";
	}
	
	
	
}