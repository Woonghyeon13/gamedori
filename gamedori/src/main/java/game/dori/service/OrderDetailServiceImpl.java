package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.OrderDetailDAO;

@Service
public class OrderDetailServiceImpl {

	@Autowired
	private OrderDetailDAO orderDetailDAO;
}
