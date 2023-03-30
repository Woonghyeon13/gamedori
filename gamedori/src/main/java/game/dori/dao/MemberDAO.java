package game.dori.dao;

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
	
	
}
