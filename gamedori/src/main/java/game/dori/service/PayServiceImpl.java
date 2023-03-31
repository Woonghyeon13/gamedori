package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.PayDAO;

@Service
public class PayServiceImpl implements PayService{

	@Autowired
	private PayDAO payDAO;
}
