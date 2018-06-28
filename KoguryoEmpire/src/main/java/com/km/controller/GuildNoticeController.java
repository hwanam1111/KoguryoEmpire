package com.km.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.km.dto.GuildNoticeVO;
import com.km.service.GuildNoticeService;


@Controller
public class GuildNoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
    private GuildNoticeService service;
	
	@RequestMapping(value = "km_noticeList", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String memberNotice(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
//		try {
//            if(request.getSession().getAttribute("login") == null ){
//            	
//            	return "km_common/returnMessage";
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
		
      logger.info("공지사항 리스트");
      
      List<GuildNoticeVO> selectNotice = service.selectNotice();
      
      model.addAttribute("selectNotice", selectNotice);


		return "km_member/list/memberNotice";
	}
	
	
	
	//	공지사항 뷰 이동
	@RequestMapping(value="km_noticeView")
	public String noticeView(String noticeNum, Model m) throws Exception{

		logger.info("공지사항 뷰");
		
		HashMap hashmap = new HashMap<>();
		hashmap.put("noticeNum", noticeNum);
		
		GuildNoticeVO noticeView = service.noticeView(hashmap);
		
		if(noticeView!=null){
			m.addAttribute("map", noticeView);
		} else {
			m.addAttribute("map", "null");
		}
		
		return "km_member/view/noticeView";
	}
	
	
	
	
	
	
	@RequestMapping("km_noticeWrite")
	public String noticeWrite() {
		
		
		return "km_member/write/noticeWrite";
	}
	
	
	// 회원가입 처리 부분
	@RequestMapping(value = "km_noticeWriteOk", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String joinOk(Locale locale, Model model, GuildNoticeVO vo) throws Exception {
		
		logger.info("공지사항 글쓰기 확인");
		
		int resultCnt = service.insertNotice(vo);
		String result = "";

		if ( resultCnt == 0 ){
			result = "실패당";
	    } else {
	        result = "성공이당";
	    }
			
		model.addAttribute("result", result);
		model.addAttribute("vo", vo);
		
		return "km_member/write/noticeWriteOk";
	}
	
	
	
}