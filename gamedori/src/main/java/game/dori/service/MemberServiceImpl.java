package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.MemberDAO;

@Service
public class MemberServiceImpl {

	@Autowired
	private MemberDAO memberDAO;
}
