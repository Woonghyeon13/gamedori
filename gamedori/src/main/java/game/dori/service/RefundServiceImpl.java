package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.RefundDAO;

@Service
public class RefundServiceImpl implements RefundService{

	@Autowired
	private RefundDAO refundDAO;
}
