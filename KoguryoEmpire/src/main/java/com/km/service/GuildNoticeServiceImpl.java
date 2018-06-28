package com.km.service;


import javax.inject.Inject;
 
import org.springframework.stereotype.Service;

import com.km.dao.GuildNoticeDao;

 
@Service
public class GuildNoticeServiceImpl implements GuildNoticeService {
 
    @Inject
    private GuildNoticeDao dao;

    
}
