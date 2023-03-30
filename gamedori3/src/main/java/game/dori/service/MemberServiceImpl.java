package game.dori.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import game.dori.dao.MemberDAO;
import game.dori.vo.MEMBER_VO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	MEMBER_VO memverVO;
	
	@Autowired
	JavaMailSender mailSender;
	


	@Override
	public MEMBER_VO selectByBno(int member_idx) {
		// TODO Auto-generated method stub
		return memberDAO.selectByBno(member_idx);
	}

	@Override
	public int selectByID(String id) {
		// TODO Auto-generated method stub
		return memberDAO.selectByEmail(id);
	}

}
