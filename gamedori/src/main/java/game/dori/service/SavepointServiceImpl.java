package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.SavepointDAO;

@Service
public class SavepointServiceImpl {

	@Autowired
	private SavepointDAO savepointDAO;
}
