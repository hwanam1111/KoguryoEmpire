package com.km.service;


import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;

import com.km.dao.AdminDao;
import com.km.dao.JoinDao;
import com.km.dto.JoinVO;
import com.km.dto.MemberVO;
 
@Service
public class JoinServiceImpl implements JoinService {
 
    @Inject
    private JoinDao dao;

	@Override
	public int guildJoin(JoinVO vo) throws Exception {

		return dao.guildJoin(vo);
	}

	
	@Override
	public List<JoinVO> joinList() throws Exception {

		return dao.joinList();
	}

    
}
