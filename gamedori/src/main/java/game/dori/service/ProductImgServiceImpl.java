package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.ProductImgDAO;

@Service
public class ProductImgServiceImpl implements ProductImgService{

	@Autowired
	private ProductImgDAO productImgDAO;
}
