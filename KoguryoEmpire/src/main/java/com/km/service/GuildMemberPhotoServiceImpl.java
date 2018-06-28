package com.km.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.dao.GuildMemberPhotoDao;

 
@Service
public class GuildMemberPhotoServiceImpl implements GuildMemberPhotoService {
 
    @Inject
    private GuildMemberPhotoDao dao;

    
}
