package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.BoardDAO;
import edu.study.vo.BoardVO;
import edu.study.vo.SearchVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> list( SearchVO svo ) {
		return boardDAO.list(svo);		//목록 조회
	}

	@Override
	public BoardVO selectByBno( int bno ) {
		return boardDAO.selectByBno(bno);
	}

	@Override
	public int update(BoardVO vo) {
		return boardDAO.update(vo);
	}

	@Override
	public int insert(BoardVO vo) {
		return boardDAO.insert(vo);
	}

	@Override
	public int delete(BoardVO vo) {
		boardDAO.deleteReply(vo);
		return boardDAO.delete(vo);
	}
	
}
