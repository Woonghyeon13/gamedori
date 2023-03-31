package game.dori.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import game.dori.service.MemberService;
import game.dori.vo.MEMBER_VO;

@RequestMapping(value="/user")
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 회원가입
	@RequestMapping( value = "/join.do", method = RequestMethod.GET)
	public String join( Model model)
	{
		MEMBER_VO vo = memberService.selectByBno(1);
		model.addAttribute("vo", vo);
	
		return "user/join";
	}
	@RequestMapping( value = "/join.do", method = RequestMethod.POST)
	public String join( Model model , MEMBER_VO MemberVO)
	{
		MEMBER_VO vo = memberService.selectByBno(1);
		model.addAttribute("vo", vo);
	
		return "user/join";
	}
	
	// 회원정보수정
	@RequestMapping( value = "/modify.do", method = RequestMethod.GET )
	public String modify()
	{
		return "user/modify";
	}
	
	// 회원탈퇴
	@RequestMapping( value = "/withdraw.do", method = RequestMethod.GET )
	public String withdraw()
	{
		return "user/withdraw";
	}
	
	// 이메일 인증필요
	@RequestMapping( value = "/emailcheck.do", method = RequestMethod.GET )
	public String emailcheck()
	{
		return "user/emailcheck";
	}
	
	
}