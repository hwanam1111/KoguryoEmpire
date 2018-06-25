package com.km.service;


import javax.inject.Inject;

 
import org.springframework.stereotype.Service;

import com.km.dao.AdminDao;
import com.km.dto.JoinVO;
import com.km.dto.MemberVO;
 
@Service
public class AdminServiceImpl implements AdminService {
 
    @Inject
    private AdminDao adao;
    
	@Override
	public int classUpdate(MemberVO mvo) throws Exception {

		return adao.classUpdate(mvo);
	}

	@Override
	public int testUpdate(JoinVO jvo) throws Exception {

		return adao.testUpdate(jvo);
	}

    
}
