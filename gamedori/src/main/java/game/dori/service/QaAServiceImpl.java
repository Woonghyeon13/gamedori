package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.QaADAO;

@Service
public class QaAServiceImpl {

	@Autowired
	private QaADAO qaADAO;
}
