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
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
      logger.info("공지사항 리스트");
      
      List<GuildNoticeVO> selectNotice = service.selectNotice();
      
      model.addAttribute("selectNotice", selectNotice);


		return "km_member/list/memberNotice";
	}
	
	
	
	//	공지사항 뷰 이동
	@RequestMapping(value="km_noticeView")
	public String noticeView(String noticeNum, Model model) throws Exception{

		logger.info("공지사항 뷰");
		
		HashMap hashmap = new HashMap<>();
		hashmap.put("noticeNum", noticeNum);
		
		GuildNoticeVO noticeView = service.noticeView(hashmap);
		
		if(noticeView!=null){
			model.addAttribute("map", noticeView);
		} else {
			model.addAttribute("map", "null");
		}
		
		return "km_member/view/noticeView";
	}
	
	
	
	
	
	
	@RequestMapping("km_noticeWrite")
	public String noticeWrite() {
		
		
		return "km_member/write/noticeWrite";
	}
	
	
	// 글쓰기 완료
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
	
	
	
	//	글삭제
	@RequestMapping(value="km_noticeDelete")
	public String noticeFormDelete(String noticeNum, Model model) throws Exception{
		
		logger.info("글 삭제");
		System.out.println("글삭제 : " + noticeNum);
		
		HashMap hashmap = new HashMap();
		hashmap.put("noticeNum", noticeNum);
		
		GuildNoticeVO noticeDelete = service.noticeDelete(hashmap);
		
		if(noticeDelete == null){
			model.addAttribute("state", "yes");
			model.addAttribute("message", "성공");
		} else {
			model.addAttribute("state", "no");
			model.addAttribute("message", "실패");
		}
		
		
		return "km_member/write/noticeDeleteOk";
	}
	
	
	//	글 수정 폼
	@RequestMapping(value="km_noticeUpdateForm")
	public String noticeFormUpdate(GuildNoticeVO nvo, Model model) throws Exception{
		
		GuildNoticeVO noticeUpdateForm = service.noticeUpdateForm(nvo);
		
		model.addAttribute("noticeUpdateForm", noticeUpdateForm);
		
		return "km_member/write/noticeUpdateForm";
	}
	
	
	// 글 수정 완료
	@RequestMapping(value="km_noticeUpdateFormOk")
	public String noticeUpdate(GuildNoticeVO nvo, Model model) throws Exception{
		
		int resultCnt = service.noticeUpdate(nvo);
		String result = "";
		
		
		if(resultCnt == 1) {
			result = "글 수정 성공";
		}else{
			result = "글 수정 실패";
		}
		
		model.addAttribute("result", result);
		model.addAttribute("nvo", nvo);
		
		
		return "km_member/write/noticeUpdateOk";
	}
	
	
	
}