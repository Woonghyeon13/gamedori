package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.CategoryDAO;

@Service
public class CategoryServiceImpl {

	@Autowired
	private CategoryDAO categoryDAO;
}
