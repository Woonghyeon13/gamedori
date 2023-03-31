package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.UsepointDAO;

@Service
public class UsepointServiceImpl implements UsepointService{

	@Autowired
	private UsepointDAO usepointDAO;
}
