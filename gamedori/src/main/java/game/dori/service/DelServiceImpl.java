package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.DelDAO;

@Service
public class DelServiceImpl {

	@Autowired
	private DelDAO delDAO;
}
