package com.km.controller;

import java.util.List;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;

import com.km.dto.MemberVO;
import com.km.service.MemberService;



@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
    private MemberService service;
	
	// 메인 페이지
	@RequestMapping(value = "km_main", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public String main(Locale locale, Model model) throws Exception{
		
        logger.info("메인페이지");
        
        List<MemberVO> memberList = service.selectMember();
        
        model.addAttribute("memberList", memberList);
 
        return "km_main/main";
    }
	
	
	// 회원가입 화면
	@RequestMapping("km_join")
	public String join() {
		
		return "km_main/join";
	}
	
	
	// 아이디 중복체크
	@RequestMapping(value="km_idChecked")
	public String idchecked(Locale locale, String userid, Model model) throws Exception{
		
		logger.info("이메일 중복체크 확인");
		
		MemberVO ok = null;
		MemberVO vo = new MemberVO();
		vo.setMemEmail(userid);
		
		ok= service.selectEmail(vo);
		
		String result="";	
	
		if(ok!=null){
			result="km_main/km_idChecked";
			model.addAttribute("vo",ok);
		} else {
			result="km_main/km_idChecked";
		}
		
		return result;
	}
	
	
	// 회원가입 처리 부분
	@RequestMapping(value = "km_joinOk", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String joinOk(Locale locale, Model model, MemberVO vo) throws Exception {
		
		logger.info("회원가입 처리 확인");
		
		int resultCnt = service.insertMember(vo);
		String result = "";

		if ( resultCnt == 0 ){
			result = "실패당";
	    } else {
	        result = "성공이당";
	    }
			
		model.addAttribute("result", result);
		model.addAttribute("vo", vo);
		
		return "km_main/joinOk";
	}
	
	
	// 로그인 화면
	@RequestMapping("km_login")
	public String login() {
		
		return "km_main/login";
	}
	
	
	// 로그인 처리 부분
	@RequestMapping(value = "km_loginChecked", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String loginChecked(Locale locale, Model model, MemberVO vo, HttpSession session) throws Exception {
		
		logger.info("로그인 확인");
		
		MemberVO ok = null;
		ok= service.selectMember(vo);
		String result="";	
		String message="";
	
		if(ok!=null){
			result = "km_main/loginOk";
			message = ok.getMemEmail()+"님 로그인하셨습니다.";
			model.addAttribute("vo",ok);
			session.setAttribute("login", ok);
		} else {
			result="km_main/loginOk";
			message="로그인실패";
			
		}
		
		model.addAttribute("message",message);
		
		return result;
	}
	
	
	// 로그아웃 페이지로 이동
	@RequestMapping(value="km_logout")
	public String logout(){
		
		return "km_main/logout";
	}
	
	
	
	
}