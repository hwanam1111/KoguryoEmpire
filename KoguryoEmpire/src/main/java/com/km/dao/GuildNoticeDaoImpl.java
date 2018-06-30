package com.km.dao;


import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.km.dto.GuildNoticeVO;
 


@Repository
public class GuildNoticeDaoImpl implements GuildNoticeDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.km.mapper.guildmemberMapper";

	@Override
	public int insertNotice(GuildNoticeVO vo) throws Exception {

		sqlSession.selectOne(Namespace+".insertNotice", vo);
		
		return 1;
	}
	

	@Override
	public List<GuildNoticeVO> selectNotice() throws Exception {

		return sqlSession.selectList(Namespace+".selectNotice");
	}


	@Override
	public GuildNoticeVO noticeView(HashMap hashmap) throws Exception {
		
		return sqlSession.selectOne(Namespace+".noticeView", hashmap);
	}


	@Override
	public GuildNoticeVO noticeDelete(HashMap hashmap) throws Exception {

		return sqlSession.selectOne(Namespace+".noticeDelete", hashmap);
	}


	@Override
	public GuildNoticeVO noticeUpdateForm(GuildNoticeVO nvo) throws Exception {

		return sqlSession.selectOne(Namespace+".noticeUpdateForm", nvo);
	}


	@Override
	public int noticeUpdate(GuildNoticeVO nvo) throws Exception {

		return sqlSession.update(Namespace+".noticeUpdate", nvo);
	}
    
}
