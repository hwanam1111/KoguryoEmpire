package com.km.dao;

import java.util.List;
import com.km.dto.MemberVO;


public interface MemberDao {

	public List<MemberVO> selectMember() throws Exception;

}
