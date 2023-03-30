package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.ProductADAO;

@Service
public class ProductAServiceImpl implements ProductAService{

	@Autowired
	private ProductADAO productADAO;
}
