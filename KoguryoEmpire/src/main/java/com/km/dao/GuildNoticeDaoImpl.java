package com.km.dao;


import java.util.List;

import javax.inject.Inject;
 
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
 


@Repository
public class GuildNoticeDaoImpl implements GuildNoticeDao{
	
	@Inject
    private SqlSession sqlSession;
    
    private static final String Namespace = "com.km.mapper.guildmemberMapper";
    
}
