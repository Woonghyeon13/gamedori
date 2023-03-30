package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import game.dori.dao.NoticeDAO;

@Service
public class NoticeServiceImpl {

	@Autowired
	private NoticeDAO noticeDAO;
}
