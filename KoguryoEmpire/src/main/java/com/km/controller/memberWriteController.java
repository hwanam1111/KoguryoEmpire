package com.km.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class memberWriteController {

	@RequestMapping("km_noticeWrite")
	public String noticeWrite() {
		
		
		return "km_member/write/noticeWrite";
	}

	
	@RequestMapping("km_infoWrite")
	public String infoWrite() {
		
		
		return "km_member/write/infoWrite";
	}

	@RequestMapping("km_freeWirte")
	public String freeWirte() {
		
		
		return "km_member/write/freeWirte";
	}

	
	@RequestMapping("km_atMovieWrite")
	public String atMovieWrite() {
		
		
		return "km_member/write/atMovieWrite";
	}

	
	@RequestMapping("km_atPhotoWrite")
	public String atPhotoWrite() {
		
		
		return "km_member/write/atPhotoWrite";
	}

	
	@RequestMapping("km_mbPhotoWrite")
	public String mbPhotoWrite() {
		
		
		return "km_member/write/mbPhotoWrite";
	}
	
}