package com.km.service;

import java.util.List;

import com.km.dto.MemberVO;
 
public interface MemberService {
    
    public List<MemberVO> selectMember() throws Exception;

	public int insertMember(MemberVO vo) throws Exception;

	public MemberVO selectEmail(MemberVO vo) throws Exception;

	public MemberVO selectMember(MemberVO vo) throws Exception;

}

