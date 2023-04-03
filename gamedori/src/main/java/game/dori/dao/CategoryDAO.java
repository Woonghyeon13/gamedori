package game.dori.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import game.dori.vo.CATEGORY_VO;

@Repository
public class CategoryDAO {

	@Autowired
	private SqlSession sqlSession;
	
	// 카테고리
	public List<CATEGORY_VO> category( CATEGORY_VO vo )
	{
		return sqlSession.selectList("game.dori.mapper.categoryMapper.category",vo);
		
	}
}
