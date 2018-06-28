package com.km.dao;

import java.util.HashMap;
import java.util.List;

import com.km.dto.GuildNoticeVO;

public interface GuildNoticeDao {

	public int insertNotice(GuildNoticeVO vo) throws Exception;

	public List<GuildNoticeVO> selectNotice() throws Exception;

	public GuildNoticeVO noticeView(HashMap hashmap) throws Exception;

}
