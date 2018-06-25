package com.km.service;

import com.km.dto.JoinVO;
import com.km.dto.MemberVO;

public interface AdminService {

	public int classUpdate(MemberVO mvo) throws Exception;

	public int testUpdate(JoinVO jvo) throws Exception;
	
}


