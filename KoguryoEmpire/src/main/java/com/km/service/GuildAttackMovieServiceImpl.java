package com.km.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.km.dao.GuildAttackMovieDao;

 
@Service
public class GuildAttackMovieServiceImpl implements GuildAttackMovieService {
 
    @Inject
    private GuildAttackMovieDao dao;

    
}
