package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.ProductADAO;

@Service
public class ProductAServiceImpl {

	@Autowired
	private ProductADAO productADAO;
}
