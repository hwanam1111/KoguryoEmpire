package com.km.service;

import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;
 
import com.km.dao.MemberDao;
import com.km.dto.MemberVO;
 
@Service
public class MemberServiceImpl implements MemberService {
 
    @Inject
    private MemberDao dao;
    
    @Override
    public List<MemberVO> selectMember() throws Exception {
 
        return dao.selectMember();
    }
 
}
