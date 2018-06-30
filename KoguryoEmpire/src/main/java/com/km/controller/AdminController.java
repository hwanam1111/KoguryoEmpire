package com.km.controller;

import java.util.List;


import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMethod;

import com.km.dto.JoinVO;
import com.km.dto.MemberVO;
import com.km.service.AdminService;
import com.km.service.JoinService;
import com.km.service.MemberService;



@Controller
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
    private MemberService memberService;
	
	@Inject
	private AdminService adminService;
	
	@Inject
	private JoinService joinService;
	
	
	
	// 어드민 메인페이지 이동
	@RequestMapping(value = "km_adminPage")
	public String adminMain(HttpServletRequest request, HttpServletResponse response, MemberVO mvo) throws Exception {

		try {
            if(request.getSession().getAttribute("login") == null){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		logger.info("어드민 메인 페이지");
		
		return "km_admin/adminMain";
	}
	
	
	// 어드민 맴버 관리
	@RequestMapping(value = "km_memberManager", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public String memberManager(Locale locale, Model model) throws Exception{
		
        logger.info("어드민 맴버관리");
        
        List<MemberVO> memberList = memberService.selectMember();
        
        model.addAttribute("memberList", memberList);
 
        return "km_admin/memberManager";
    }
	
	
	// 어드민 맴버 등급 수정
	@RequestMapping(value = "km_classUpdate", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public String classUpdate(Locale locale, Model model, MemberVO mvo) throws Exception{
		
        logger.info("어드민 맴버 등급 수정");
        
        int resultCnt = adminService.classUpdate(mvo);
		String result="";
		
		
		if(resultCnt == 1) {
			result = "회원등급이 수정되었습니다.";
		}else{
			result = "Error Code -> 0101";
		}
		
		model.addAttribute("result", result);
		model.addAttribute("mvo", mvo);
        
 
        return "km_admin/classUpdate";
    }
	
	
	// 어드민 맴버 관리
	@RequestMapping(value = "km_joinManager", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public String joinManager(Locale locale, Model model) throws Exception{
		
        logger.info("어드민 가입관리");
        
        List<JoinVO> joinList = joinService.joinList();
        
        model.addAttribute("joinList", joinList);
 
        return "km_admin/joinManager";
    }
	
	
	@RequestMapping(value = "km_testUpdate", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
    public String testUpdate(Locale locale, Model model, JoinVO jvo) throws Exception{
		
        logger.info("어드민 테스트 결과 상태 수정");
        
        int resultCnt = adminService.testUpdate(jvo);
		String result="";
		
		
		if(resultCnt == 1) {
			result = "회원등급이 수정되었습니다.";
		}else{
			result = "Error Code -> 0101";
		}
		
		model.addAttribute("result", result);
		model.addAttribute("mvo", jvo);
        
 
        return "km_admin/testUpdate";
    }
		
	
	
}