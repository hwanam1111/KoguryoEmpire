package com.km.service;

import java.util.HashMap;
import java.util.List;

import com.km.dto.GuildNoticeVO;

public interface GuildNoticeService {

	public int insertNotice(GuildNoticeVO vo) throws Exception;

	public List<GuildNoticeVO> selectNotice() throws Exception;

	public GuildNoticeVO noticeView(HashMap hashmap) throws Exception;

	public GuildNoticeVO noticeDelete(HashMap hashmap) throws Exception;

	public GuildNoticeVO noticeUpdateForm(GuildNoticeVO nvo) throws Exception;

	public int noticeUpdate(GuildNoticeVO nvo) throws Exception;

	
}


