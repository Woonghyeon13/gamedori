package edu.study.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import edu.study.service.BoardService;
import edu.study.vo.BoardVO;
import edu.study.vo.SearchVO;
import edu.study.vo.UserVO;

// DispatchServlet 이 가상경로를 매핑 할 controller 에는 반드시 @Controller를 명시해야만 한다
@RequestMapping( value="/board" )
@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping( value="/list.do" )
	public String list( Model model, SearchVO svo )
	{
		List<BoardVO> list = boardService.list(svo);
		
		model.addAttribute("list",list); // request.setAttribute("list",list)
		
		return "board/list";
	}

	@RequestMapping( value="/write.do", method = RequestMethod.GET )
	public String write()
	{
		
		return "board/write";
	}

	@RequestMapping( value="/write.do", method = RequestMethod.POST )
	public String write( BoardVO vo, MultipartFile uploadFile ,HttpServletRequest req ) throws IllegalStateException, IOException
	{
		HttpSession session = req.getSession();
		UserVO loginUserVO = (UserVO)session.getAttribute("login");
		
		String path = "E:\\stsWs\\springMVC\\src\\main\\webapp\\resources\\uploadFile";
		
		//위치폴더가 존재하는지 확인
		File dir = new File(path);
		if( !dir.exists() ) // 폴더가 없을 경우
		{
			dir.mkdirs();
		}
		
		if( !uploadFile.getOriginalFilename().isEmpty() ) // 파라미터 파일이 존재하는 경우
		{
			String newFileName = System.currentTimeMillis()+uploadFile.getOriginalFilename();
			uploadFile.transferTo(new File(path,newFileName));
		}
		
		vo.setUno(loginUserVO.getUno());
		
		System.out.println(vo.getUno());
		System.out.println(vo.getBtitle());
		System.out.println(vo.getBkind());
		System.out.println(vo.getBnote());
		
		int result = boardService.insert(vo);
		
		System.out.println("등록된 게시글의bno:"+vo.getBno());
		
		return "redirect:/board/view.do?bno="+vo.getBno();
	}
	
	@RequestMapping( value="/view.do")
	public String view( int bno, Model model )
	{
		BoardVO vo = boardService.selectByBno(bno); // 화면에 필요한 상세 게시글 조회
		model.addAttribute("vo",vo);		
		return "board/view";
	}
	
	@RequestMapping( value="/modify.do", method = RequestMethod.GET )
	public String modify( int bno, Model model )
	{
		BoardVO vo = boardService.selectByBno(bno); // 화면에 필요한 상세 게시글 조회
		model.addAttribute("vo",vo);		
		return "board/modify";
	}

	@RequestMapping( value="/modify.do", method = RequestMethod.POST )
	public String modify( BoardVO vo )
	{
		// 화면에서 넘어온 데이터를 수정처리 (비지니스 로직)
		int result = boardService.update(vo);
		
		if( result > 0 )
		{
			return "redirect:/board/view.do?bno="+vo.getBno();
		}else
		{
			return "redirect:/board/view.do?bno="+vo.getBno()+"&updateYN=N";
		}
		
	}
	
	@RequestMapping( value="/delete.do", method = RequestMethod.POST )
	public String delete( BoardVO vo )
	{
		int result = boardService.delete(vo);
		
		if( result > 0 )
		{
			return "redirect:/board/list.do";
		}else
		{
			return "redirect:/board/view.do?bno="+vo.getBno()+"&updateYN=N";
		}	
	}
}
