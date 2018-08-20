package com.km.service;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.dao.GuildAttackMovieDao;
import com.km.dto.GuildAttackMovieVO;

 
@Service
public class GuildAttackMovieServiceImpl implements GuildAttackMovieService {
 
    @Inject
    private GuildAttackMovieDao dao;

	@Override
	public int insertAttackMovie(GuildAttackMovieVO vo) throws Exception {
		
		return dao.insertAttackMovie(vo);
	}

	
	@Override
	public List<GuildAttackMovieVO> selectAttackMovie() throws Exception {
		
		return dao.selectAttackMovie();
	}


	@Override
	public GuildAttackMovieVO atmovieView(HashMap hashmap) throws Exception {
		
		return dao.atmovieView(hashmap);
	}


	@Override
	public GuildAttackMovieVO atMovieUpdateForm(GuildAttackMovieVO vo) throws Exception {
		
		return dao.atMovieUpdateForm(vo);
	}


	@Override
	public int atmovieUpdate(GuildAttackMovieVO vo) throws Exception {
		
		return dao.atmovieUpdate(vo);
	}


	@Override
	public GuildAttackMovieVO atmovieDelete(HashMap hashmap) throws Exception {
		
		return dao.atmovieDelete(hashmap);
	}

    
}
