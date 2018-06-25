package com.km.dao;

import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
 
import com.km.dto.MemberVO;


@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.km.mapper.memberMapper";
    
    @Override
    public List<MemberVO> selectMember() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectMember");
    }

	@Override
	public int insertMember(MemberVO vo) throws Exception {
		
		sqlSession.selectOne(Namespace+".insertMember", vo);
		
		return 1;
	}

	@Override
	public MemberVO idChecked(MemberVO vo) throws Exception {

		return sqlSession.selectOne(Namespace+".idChecked", vo);
	}

	@Override
	public MemberVO loginChecked(MemberVO vo) throws Exception {
		
		return sqlSession.selectOne(Namespace+".loginChecked", vo);
	}


}
