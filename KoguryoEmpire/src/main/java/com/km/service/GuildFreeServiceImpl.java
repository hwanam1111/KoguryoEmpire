package com.km.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.dao.GuildFreeDao;

 
@Service
public class GuildFreeServiceImpl implements GuildFreeService {
 
    @Inject
    private GuildFreeDao dao;

    
}
