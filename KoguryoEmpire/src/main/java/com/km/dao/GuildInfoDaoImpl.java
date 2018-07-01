package com.km.dao;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.km.dto.GuildInfoVO;
import com.km.dto.GuildNoticeVO;
 


@Repository
public class GuildInfoDaoImpl implements GuildInfoDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.km.mapper.guildmemberMapper";

    
	@Override
	public int insertInfo(GuildInfoVO vo) throws Exception {

		sqlSession.selectOne(Namespace+".insertInfo", vo);
		
		return 1;
	}

	

	@Override
	public GuildInfoVO infoView(HashMap hashmap) throws Exception {

		return sqlSession.selectOne(Namespace+".infoView", hashmap);
	}



	@Override
	public List<GuildInfoVO> selectInfo() throws Exception {

		return sqlSession.selectList(Namespace+".selectInfo");
	}



	@Override
	public GuildInfoVO infoUpdateForm(GuildInfoVO vo) throws Exception {

		return sqlSession.selectOne(Namespace+".infoUpdateForm", vo);
	}



	@Override
	public int infoUpdate(GuildInfoVO vo) throws Exception {
		
		return sqlSession.update(Namespace+".infoUpdate", vo);
	}



	@Override
	public GuildInfoVO infoDelete(HashMap hashmap) throws Exception {
		
		return sqlSession.selectOne(Namespace+".infoDelete", hashmap);
	}
    
}
