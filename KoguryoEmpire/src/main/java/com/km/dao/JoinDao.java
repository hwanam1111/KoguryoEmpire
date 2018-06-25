package com.km.dao;

import java.util.List;

import com.km.dto.JoinVO;

public interface JoinDao {

	public int guildJoin(JoinVO vo) throws Exception;

	public List<JoinVO> joinList() throws Exception;



}
