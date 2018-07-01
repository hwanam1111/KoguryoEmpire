package com.km.dao;

import java.util.HashMap;
import java.util.List;

import com.km.dto.GuildInfoVO;
import com.km.dto.GuildNoticeVO;

public interface GuildInfoDao {

	public int insertInfo(GuildInfoVO vo) throws Exception;

	public GuildInfoVO infoView(HashMap hashmap) throws Exception;

	public List<GuildInfoVO> selectInfo() throws Exception;

	public GuildInfoVO infoUpdateForm(GuildInfoVO vo) throws Exception;

	public int infoUpdate(GuildInfoVO vo) throws Exception;

	public GuildInfoVO infoDelete(HashMap hashmap) throws Exception;

}
