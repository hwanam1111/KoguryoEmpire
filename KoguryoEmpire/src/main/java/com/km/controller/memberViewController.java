package com.km.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class memberViewController {

	@RequestMapping("km_noticeView")
	public String noticeView() {

		return "km_member/view/noticeView";
	}

	@RequestMapping("km_infoView")
	public String infoView() {

		return "km_member/view/infoView";
	}

	@RequestMapping("km_freeView")
	public String freeView() {

		return "km_member/view/freeView";
	}

	@RequestMapping("km_atMovieView")
	public String atMovieView() {

		return "km_member/view/atMovieView";
	}

	@RequestMapping("km_atPhotoView")
	public String atPhotoView() {

		return "km_member/view/atPhotoView";
	}

	@RequestMapping("km_mbPhotoView")
	public String mbPhotoView() {

		return "km_member/view/mbPhotoView";
	}

}