package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.ReviewDAO;

@Service
public class ReviewServiceImpl {

	@Autowired
	private ReviewDAO reviewDAO;
}
