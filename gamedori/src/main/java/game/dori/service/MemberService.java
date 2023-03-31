
package game.dori.service;

import game.dori.vo.MEMBER_VO;

public interface MemberService {
	
	
	int selectByID(String id);

	MEMBER_VO selectByBno(int member_idx);
	
}