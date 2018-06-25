package com.km.dao;

import com.km.dto.JoinVO;
import com.km.dto.MemberVO;

public interface AdminDao {

	public int classUpdate(MemberVO mvo) throws Exception;

	public int testUpdate(JoinVO jvo) throws Exception;


}
