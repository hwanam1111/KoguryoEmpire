package com.km.dao;


import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.km.dto.JoinVO;
import com.km.dto.MemberVO;


@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.km.mapper.adminMapper";

	@Override
	public int classUpdate(MemberVO mvo) throws Exception {

		return sqlSession.update(Namespace+".classUpdate", mvo);
	}

	@Override
	public int testUpdate(JoinVO jvo) throws Exception {

		return sqlSession.update(Namespace+".testUpdate", jvo);
	}
    
}
