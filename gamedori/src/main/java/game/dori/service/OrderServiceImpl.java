package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.OrderDAO;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDAO orderDAO;
}
