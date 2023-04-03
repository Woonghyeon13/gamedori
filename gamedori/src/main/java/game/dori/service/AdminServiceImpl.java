package game.dori.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.CategoryDAO;
import game.dori.vo.CATEGORY_VO;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private CategoryDAO categoryDAO;
	
	// 카테고리 불러오기
	@Override
	public List<CATEGORY_VO> category( CATEGORY_VO vo ) {
		return categoryDAO.category( vo );
	}
}
