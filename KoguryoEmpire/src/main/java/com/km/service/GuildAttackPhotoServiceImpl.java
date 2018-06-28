package com.km.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.dao.GuildAttackPhotoDao;

 
@Service
public class GuildAttackPhotoServiceImpl implements GuildAttackPhotoService {
 
    @Inject
    private GuildAttackPhotoDao dao;

    
}
