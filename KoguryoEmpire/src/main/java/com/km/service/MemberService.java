package com.km.service;

import java.util.List;

import com.km.dto.MemberVO;
 
public interface MemberService {
    
    public List<MemberVO> selectMember() throws Exception;
}


