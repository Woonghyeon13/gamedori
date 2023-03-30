package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.ProductQDAO;

@Service
public class ProductQServiceImpl {

	@Autowired
	private ProductQDAO productQDAO;
}
