package com.km.service;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.dao.GuildInfoDao;
import com.km.dto.GuildInfoVO;
import com.km.dto.GuildNoticeVO;

 
@Service
public class GuildInfoServiceImpl implements GuildInfoService {
 
    @Inject
    private GuildInfoDao dao;

    
	@Override
	public int insertInfo(GuildInfoVO vo) throws Exception {

		return dao.insertInfo(vo);
	}


	
	@Override
	public GuildInfoVO infoView(HashMap hashmap) throws Exception {

		return dao.infoView(hashmap);
	}



	@Override
	public List<GuildInfoVO> selectInfo() throws Exception {

		return dao.selectInfo();
	}



	@Override
	public GuildInfoVO infoUpdateForm(GuildInfoVO vo) throws Exception {

		return dao.infoUpdateForm(vo);
	}



	@Override
	public int infoUpdate(GuildInfoVO vo) throws Exception {

		return dao.infoUpdate(vo);
	}



	@Override
	public GuildInfoVO infoDelete(HashMap hashmap) throws Exception {

		return dao.infoDelete(hashmap);
	}

    
}
