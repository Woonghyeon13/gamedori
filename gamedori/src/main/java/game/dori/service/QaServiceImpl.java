package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.QaDAO;

@Service
public class QaServiceImpl {

	@Autowired
	private QaDAO qaDAO;
}
