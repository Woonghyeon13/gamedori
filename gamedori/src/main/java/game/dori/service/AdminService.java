package game.dori.service;

import java.util.List;

import game.dori.vo.CATEGORY_VO;

public interface AdminService {

	// 상품 카테고리 불러오기
	public List<CATEGORY_VO> category( CATEGORY_VO vo );

}
