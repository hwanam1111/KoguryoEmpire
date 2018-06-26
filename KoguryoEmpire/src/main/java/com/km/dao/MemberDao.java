package com.km.dao;

import java.util.List;
import com.km.dto.MemberVO;


public interface MemberDao {

	public List<MemberVO> selectMember() throws Exception;

	public int insertMember(MemberVO vo) throws Exception;

	public MemberVO idChecked(MemberVO vo) throws Exception;

	public MemberVO loginChecked(MemberVO vo) throws Exception;

	public MemberVO idSearchChecked(MemberVO vo) throws Exception;

	public MemberVO pwSearchChecked(MemberVO vo) throws Exception;

}
