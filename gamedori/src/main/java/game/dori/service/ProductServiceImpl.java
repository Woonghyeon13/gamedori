package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.ProductDAO;

@Service
public class ProductServiceImpl {

	@Autowired
	private ProductDAO productDAO;
}
