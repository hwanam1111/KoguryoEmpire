package com.km.dao;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.km.dto.GuildAttackMovieVO;
 


@Repository
public class GuildAttackMovieDaoImpl implements GuildAttackMovieDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.km.mapper.guildmemberMapper";

	@Override
	public int insertAttackMovie(GuildAttackMovieVO vo) throws Exception {

		sqlSession.selectOne(Namespace+".insertAttackMovie", vo);
		
		return 1;
	}
	

	@Override
	public List<GuildAttackMovieVO> selectAttackMovie() throws Exception {
		
		return sqlSession.selectList(Namespace+".selectAttackMovie");
	}


	@Override
	public GuildAttackMovieVO atmovieView(HashMap hashmap) throws Exception {
		
		return sqlSession.selectOne(Namespace+".atmovieView", hashmap);
	}


	@Override
	public GuildAttackMovieVO atMovieUpdateForm(GuildAttackMovieVO vo) throws Exception {

		return sqlSession.selectOne(Namespace+".atmovieUpdateForm", vo);
	}


	@Override
	public int atmovieUpdate(GuildAttackMovieVO vo) throws Exception {
		
		return sqlSession.update(Namespace+".atmovieUpdate", vo);
	}


	@Override
	public GuildAttackMovieVO atmovieDelete(HashMap hashmap) throws Exception {	
		
		return sqlSession.selectOne(Namespace+".atmovieDelete", hashmap);
	}
    
}
