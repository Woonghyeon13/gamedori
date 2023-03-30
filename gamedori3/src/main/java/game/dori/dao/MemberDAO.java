package game.dori.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import game.dori.vo.MEMBER_VO;


@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private static String namespace = "game.dori.mapper.MemberMapper.";
	
	public MEMBER_VO selectByBno(int member_idx)
	{
		return sqlSession.selectOne(namespace + "selectByBno",member_idx);
	}

	public int selectByEmail(String id)
	{
		return sqlSession.selectOne(namespace + "selectbyID",id);
	}
	
	
	public int updateMailKey(MEMBER_VO memberVO) throws Exception
	{
		return sqlSession.update(namespace + "updateMailKey", memberVO);
	}
	
	public int updateMailAuth(MEMBER_VO memberVO) throws Exception
	{
		return sqlSession.update(namespace + "updateMailAuth",memberVO );
	}
	
	public int emailAuthFail(String email) throws Exception{
		return sqlSession.selectOne(namespace + "emailAuthFail", email);
	}
	
	 public int insertMember(MEMBER_VO memberVO) {
	        return sqlSession.insert(namespace + "insertMember", memberVO);
	   }
	
}
