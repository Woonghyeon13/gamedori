package game.dori.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import game.dori.vo.MEMBER_VO;
import game.dori.Service.MemberService;

@RequestMapping(value="/user")
@Controller
public class UserController {
	
	@Autowired
	private MemberService MemberService;
	

	
	
	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join( Model model) {
		MEMBER_VO vo = MemberService.selectByBno(1);
		model.addAttribute("vo", vo);
	
		return "user/join";
	}
	
	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join( Model model , MEMBER_VO MemberVO) {
		MEMBER_VO vo = MemberService.selectByBno(1);
		model.addAttribute("vo", vo);
	
		return "user/join";
	}
	
	
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String mypage() {

		return "user/mypage";
	}
	
	@ResponseBody
	@RequestMapping(value="/checkID.do" ,method=RequestMethod.GET)
	public String checkID(String id)
	{
		int result = MemberService.selectByID(id);
		
		if(result > 0)
		{
			return "0"; 
		}
		else 
		{
			return "1"; 
		}
	}
	
	
	@RequestMapping(value = "/registerEmail.do")
	public String emailConfirm(MEMBER_VO memberVO) throws Exception
	{
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + memberVO.getMember_email());
		
		
		return "/user/join";
		
	}
	
	
	@RequestMapping(value = "/PhoneCheck.do")
	public String PhoneConfirm(MEMBER_VO memberVO) throws Exception
	{
		System.out.println("휴대폰 인증 요청이 들어옴!");
		System.out.println("휴대폰 인증 요청 번호 : " + memberVO.getMember_phone());
		
		
		return "/user/join";
		
	}
	
}
