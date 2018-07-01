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

import com.km.dto.GuildInfoVO;
import com.km.dto.GuildNoticeVO;
import com.km.service.GuildInfoService;


@Controller
public class GuildInfoController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
	private GuildInfoService service;

	
	@RequestMapping(value = "km_infoList", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String memberInfo(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/returnMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
      logger.info("자기소개 리스트");
      
      List<GuildInfoVO> selectInfo = service.selectInfo();
      
      model.addAttribute("selectInfo", selectInfo);


		return "km_member/list/memberInfo";
	}
	
	
	//	자기소개 뷰 이동
	@RequestMapping(value="km_infoView")
	public String infoView(String infoNum, Model model) throws Exception{

		logger.info("자기소개 뷰");
		
		HashMap hashmap = new HashMap<>();
		hashmap.put("infoNum", infoNum);
		
		GuildInfoVO infoView = service.infoView(hashmap);
		
		if(infoView!=null){
			model.addAttribute("map", infoView);
		} else {
			model.addAttribute("map", "null");
		}
		
		return "km_member/view/infoView";
	}
	
	
	@RequestMapping("km_infoWrite")
	public String infoWrite() {
		
		
		return "km_member/write/infoWrite";
	}
	
	
	// 글쓰기 완료
	@RequestMapping(value = "km_infoWriteOk", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String infoWriteOk(Locale locale, Model model, GuildInfoVO vo) throws Exception {
		
		logger.info("자기소개 글쓰기 확인");
		
		int resultCnt = service.insertInfo(vo);
		String result = "";

		if ( resultCnt == 0 ){
			result = "실패당";
	    } else {
	        result = "성공이당";
	    }
			
		model.addAttribute("result", result);
		model.addAttribute("vo", vo);
		
		return "km_member/write/infoWriteOk";
	}
	
	
	//	글 수정 폼
	@RequestMapping(value="km_infoUpdateForm")
	public String infoFormUpdate(GuildInfoVO vo, Model model) throws Exception{
		
		GuildInfoVO infoUpdateForm = service.infoUpdateForm(vo);
		
		model.addAttribute("infoUpdateForm", infoUpdateForm);
		
		return "km_member/write/infoUpdateForm";
	}
	
	
	// 글 수정 완료
	@RequestMapping(value="km_infoUpdateFormOk")
	public String infoUpdate(GuildInfoVO vo, Model model) throws Exception{
		
		int resultCnt = service.infoUpdate(vo);
		String result = "";
		
		
		if(resultCnt == 1) {
			result = "글 수정 성공";
		} else {
			result = "글 수정 실패";
		}
		
		model.addAttribute("result", result);
		model.addAttribute("vo", vo);
		
		
		return "km_member/write/infoUpdateOk";
	}
	
	
	//	글삭제
	@RequestMapping(value="km_infoDelete")
	public String infoFormDelete(String infoNum, Model model) throws Exception{
		
		logger.info("글 삭제");
		System.out.println("글삭제 : " + infoNum);
		
		HashMap hashmap = new HashMap();
		hashmap.put("infoNum", infoNum);
		
		GuildInfoVO infoDelete = service.infoDelete(hashmap);
		
		if(infoDelete == null){
			model.addAttribute("state", "yes");
			model.addAttribute("message", "성공");
		} else {
			model.addAttribute("state", "no");
			model.addAttribute("message", "실패");
		}
		
		
		return "km_member/write/infoDeleteOk";
	}
	
}