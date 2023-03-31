package game.dori.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping( value = "/mypage" )
@Controller
public class MypageController {
	
	//찜목록
	@RequestMapping( value = "/wishlist", method = RequestMethod.GET )
	public String wishlist()
	{
		return "mypage/wishlist";
	}
	
	//장바구니
	@RequestMapping( value = "/cart", method = RequestMethod.GET )
	public String cart()
	{
		return "mypage/cart";
	}
	
}
