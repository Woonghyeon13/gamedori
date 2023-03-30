package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.LevelDAO;

@Service
public class LevelServiceImpl {

	@Autowired
	private LevelDAO levelDAO;
}
