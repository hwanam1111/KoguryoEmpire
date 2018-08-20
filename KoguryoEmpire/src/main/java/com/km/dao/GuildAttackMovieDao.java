package com.km.dao;

import java.util.HashMap;
import java.util.List;

import com.km.dto.GuildAttackMovieVO;

public interface GuildAttackMovieDao {

	public int insertAttackMovie(GuildAttackMovieVO vo) throws Exception;

	public List<GuildAttackMovieVO> selectAttackMovie() throws Exception;

	public GuildAttackMovieVO atmovieView(HashMap hashmap) throws Exception;

	public GuildAttackMovieVO atMovieUpdateForm(GuildAttackMovieVO vo) throws Exception;

	public int atmovieUpdate(GuildAttackMovieVO vo) throws Exception;

	public GuildAttackMovieVO atmovieDelete(HashMap hashmap) throws Exception;

}
