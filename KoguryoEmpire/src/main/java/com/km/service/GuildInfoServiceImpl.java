package com.km.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.dao.GuildInfoDao;

 
@Service
public class GuildInfoServiceImpl implements GuildInfoService {
 
    @Inject
    private GuildInfoDao dao;

    
}
