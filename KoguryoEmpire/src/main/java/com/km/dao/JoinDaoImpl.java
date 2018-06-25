package com.km.dao;


import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
 
import com.km.dto.JoinVO;


@Repository
public class JoinDaoImpl implements JoinDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.km.mapper.joinMapper";

	@Override
	public int guildJoin(JoinVO vo) throws Exception {

		sqlSession.selectOne(Namespace+".guildJoin", vo);
		
		return 1;
	}

	
	@Override
	public List<JoinVO> joinList() throws Exception {

		return sqlSession.selectList(Namespace+".joinList");
	}

    
}
