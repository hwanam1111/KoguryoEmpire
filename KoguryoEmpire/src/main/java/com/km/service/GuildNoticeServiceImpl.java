package com.km.service;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;

import com.km.dao.GuildNoticeDao;
import com.km.dto.GuildNoticeVO;

 
@Service
public class GuildNoticeServiceImpl implements GuildNoticeService {
 
    @Inject
    private GuildNoticeDao dao;

	@Override
	public int insertNotice(GuildNoticeVO vo) throws Exception {

		return dao.insertNotice(vo);
	}

	@Override
	public List<GuildNoticeVO> selectNotice() throws Exception {

		return dao.selectNotice();
	}

	
	@Override
	public GuildNoticeVO noticeView(HashMap hashmap) throws Exception {
		
		return dao.noticeView(hashmap);
	}
	

	@Override
	public GuildNoticeVO noticeDelete(HashMap hashmap) throws Exception {

		return dao.noticeDelete(hashmap);
	}

	
	@Override
	public GuildNoticeVO noticeUpdateForm(GuildNoticeVO nvo) throws Exception {

		return dao.noticeUpdateForm(nvo);
	}

	@Override
	public int noticeUpdate(GuildNoticeVO nvo) throws Exception {

		return dao.noticeUpdate(nvo);
	}

    
}
