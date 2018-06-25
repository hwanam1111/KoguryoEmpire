package com.km.service;

import java.util.List;

import com.km.dto.JoinVO;

public interface JoinService {

	public int guildJoin(JoinVO vo) throws Exception;

	public List<JoinVO> joinList() throws Exception;

	
}


