package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.PointUsedDAO;

@Service
public class PointUsedServiceImpl implements PointUsedService{

	@Autowired
	private PointUsedDAO pointUsedDAO;
}
