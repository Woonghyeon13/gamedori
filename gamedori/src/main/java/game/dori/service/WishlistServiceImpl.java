package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.WishlistDAO;

@Service
public class WishlistServiceImpl implements WishlistService{

	@Autowired
	private WishlistDAO wishlistDAO;
}
