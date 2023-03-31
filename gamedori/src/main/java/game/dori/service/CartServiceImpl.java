package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.CartDAO;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	private CartDAO cartDAO;
}
