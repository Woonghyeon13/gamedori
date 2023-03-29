package game.dori.Service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.mail.javamail.MimeMessageHelper;

import game.dori.DAO.MEMBER_DAO;
import game.dori.util.MailHandler;
import game.dori.util.TempKey;
import game.dori.vo.MEMBER_VO;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MEMBER_DAO Member_DAO;
	
	MEMBER_VO memverVO;
	
	@Autowired
	JavaMailSender mailSender;
	


	@Override
	public MEMBER_VO selectByBno(int member_idx) {
		// TODO Auto-generated method stub
		return Member_DAO.selectByBno(member_idx);
	}

	@Override
	public int selectByID(String id) {
		// TODO Auto-generated method stub
		return Member_DAO.selectByEmail(id);
	}

	
	  @Override public int updateMailKey(MEMBER_VO memberVO) throws Exception { 
		
	 // TODO Auto-generated method stub 
		  return Member_DAO.updateMailKey(memberVO); 
		  }
	  
	 @Override public int updateMailAuth(MEMBER_VO memberVO) throws Exception { //
	// TODO Auto-generated method stub
		 return Member_DAO.updateMailAuth(memberVO); 
		 }
	  
	 @Override public int emailAuthFail(String email) throws Exception { // TODO
	 //Auto-generated method stub 
		 return Member_DAO.emailAuthFail(email); 
		 }
	
	@Override
	public void insertMember(MEMBER_VO memberVO) throws Exception {
	
		String mail_key = new TempKey().getKey(30, false);
		memverVO.setMail_key(mail_key);
		
		//회원가입
		Member_DAO.insertMember(memberVO);
		Member_DAO.updateMailKey(memberVO);
		
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[RunninGo 인증메일 입니다.]"); //메일 제목
		sendMail.setText(
				"<h1>RunninGo 메일인증<h1" +
				"<br>RunninGo에 오신것을 환영합니다!" +
				"<br>아래 [이메일 인증 확인]을 눌러주세요." +
				"<br><a href='http://localhost:8155//controller/user/registerEmail.do?email=" 
				+ memberVO.getMember_email()+"&mail_key=" + mail_key + "' target='_blank'>이메일 인증 확인</a>");
				sendMail.setFrom("jjangcanon@gmail.com", "김동일");
				sendMail.setTo(memverVO.getMember_email());
				sendMail.send();
				
	}
	
	
	
	
	
	


}
