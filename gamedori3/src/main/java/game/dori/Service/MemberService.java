package game.dori.Service;

import game.dori.vo.MEMBER_VO;

public interface MemberService {
	
	
	MEMBER_VO selectByBno(int member_idx);
	
	int selectByID(String id);
	
	
	  int updateMailKey(MEMBER_VO memberVO) throws Exception; int
	  updateMailAuth(MEMBER_VO memberVO) throws Exception; int emailAuthFail(String
	  email) throws Exception;
	 
	void insertMember(MEMBER_VO memberVO) throws Exception;
	
	
}
