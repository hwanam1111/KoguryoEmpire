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

    
	@Override
	public int insertMember(MemberVO vo) throws Exception {

		return dao.insertMember(vo);
	}


	@Override
	public MemberVO selectEmail(MemberVO vo) throws Exception {

		MemberVO result = dao.idChecked(vo);

		return result;
	}


	@Override
	public MemberVO selectMember(MemberVO vo) throws Exception {
		
		MemberVO result = dao.loginChecked(vo);
		
		return result;
	}


	@Override
	public MemberVO idSearchChecked(MemberVO vo) throws Exception {

		MemberVO result = dao.idSearchChecked(vo);
		
		return result;
	}


	@Override
	public MemberVO pwSearchChecked(MemberVO vo) throws Exception {
		
		MemberVO result = dao.pwSearchChecked(vo);
		
		return result;
	}
 
}
