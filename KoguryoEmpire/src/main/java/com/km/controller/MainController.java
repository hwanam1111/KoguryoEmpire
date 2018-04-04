package com.km.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("km_main")
	public String main() {
		System.out.println("mainPage �룞�옉");
		return "km_main/main";
	}
}