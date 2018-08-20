package com.km.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.km.dto.GuildAttackMovieVO;
import com.km.dto.GuildNoticeVO;
import com.km.service.GuildAttackMovieService;


@Controller
public class GuildAttackMovieController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
    private GuildAttackMovieService service;
	
	
	// 영상 리스트
	@RequestMapping(value="km_atMovieList", method = RequestMethod.GET, produces="text/plain;charset=UTF-8")
	public String attackMovie(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		logger.info("타임어택 영상 리스트");
		
		List<GuildAttackMovieVO> selectAttackMovie = service.selectAttackMovie();
	      
	    model.addAttribute("selectAttackMovie", selectAttackMovie);
		
		return "km_member/list/attackMovie";
	}
	
	
	
	// 타임어택 영상 뷰
	@RequestMapping("km_atMovieView")
	public String atMovieView(String atmovieNumber, Model model) throws Exception{
		
		logger.info("타임어택 영상 뷰");
		
		HashMap hashmap = new HashMap<>();
		hashmap.put("atmovieNumber", atmovieNumber);
		
		GuildAttackMovieVO atmovieView = service.atmovieView(hashmap);
		
		if(atmovieView!=null){
			model.addAttribute("map", atmovieView);
		} else {
			model.addAttribute("map", "null");
		}

		return "km_member/view/atMovieView";
	}
	
	
	
	
	
	@RequestMapping("km_atMovieWrite")
	public String atMovieWrite(HttpServletRequest request, HttpServletResponse response) {
		
		try {
            if(request.getSession().getAttribute("login") == null ){
            	
            	return "km_common/loginMessage";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		
		return "km_member/write/atMovieWrite";
	}
	
	
	// 글쓰기 완료
	@RequestMapping(value = "km_atMovieWriteOk", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	@ResponseStatus(value=HttpStatus.OK)
	public String atMovieWriteOk(Locale locale, Model model, GuildAttackMovieVO vo) throws Exception {
		
		logger.info("타임어택 글쓰기 완료");
		
		int resultCnt = service.insertAttackMovie(vo); 
		String result = "";

		if ( resultCnt == 0 ){
			result = "실패당";
	    } else { 
	        result = "성공이당";
	    }
			
		model.addAttribute("result", result);
		model.addAttribute("vo", vo);
		
		
		
		return "km_member/write/atMovieWriteOk";
	}
	

	
	//	글 수정 폼
	@RequestMapping(value="km_atmovieUpdateForm")
	public String atMovieUpdateForm(GuildAttackMovieVO vo, Model model) throws Exception{
		
		GuildAttackMovieVO atMovieUpdateForm = service.atMovieUpdateForm(vo);
		
		model.addAttribute("atMovieUpdateForm", atMovieUpdateForm);
		 
		return "km_member/write/atMovieUpdateForm";
	}
	
	
	// 글 수정 완료
	@RequestMapping(value="km_atmovieUpdateFormOk", method = RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.OK)
	public String atmovieUpdate(GuildAttackMovieVO vo, Model model) throws Exception{
		
		int resultCnt = service.atmovieUpdate(vo);
		String result = "";
		
		
		if(resultCnt == 1) {
			result = "글 수정 성공";
		}else{
			result = "글 수정 실패";
		}
		
		model.addAttribute("result", result);
		model.addAttribute("vo", vo);
		
		
		return "km_member/write/atMovieUpdateOk";
	}
	
	
	
	//	글삭제
	@RequestMapping(value="km_atmovieDelete")
	public String atmovieDelete(String atmovieNumber, Model model) throws Exception{
		
		logger.info("글삭제");
		System.out.println("글삭제 : " + atmovieNumber);
		
		HashMap hashmap = new HashMap();
		hashmap.put("atmovieNumber", atmovieNumber);
		
		GuildAttackMovieVO atmovieDelete = service.atmovieDelete(hashmap);
		
		if(atmovieDelete == null){
			model.addAttribute("state", "yes");
			model.addAttribute("message", "성공");
		} else {
			model.addAttribute("state", "no");
			model.addAttribute("message", "실패");
		}
		
		
		return "km_member/write/atMovieDeleteOk";
	}
	
	
	
	
	
	@RequestMapping("km_atMovieYoutube")
	public String atMovieYoutube() {
		
		return "km_member/write/atMovieYoutube";
	}
	
	
	
}