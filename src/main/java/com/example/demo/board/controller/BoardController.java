package com.example.demo.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.board.dto.BoardDTO;
import com.example.demo.board.service.BoardService;

//@RestController
@Controller
public class BoardController {
	
	@Autowired
	BoardService bService;
	
	@GetMapping(value="/boardList")
//	@ResponseBody
	public ModelAndView getBoard(ModelAndView mv) throws Exception {
		List<BoardDTO> list = bService.getBoardList();
		mv.addObject("BoardList", list);
		mv.addObject("test", "테스트");
		mv.setViewName("sample/boardList.web");
		
		return mv;
	}
	
	@GetMapping(value="/tiles")
//	@ResponseBody
	public String getTiles(ModelAndView mv) throws Exception {
		
		return "sample/boardList.web";
	}
	
	//pdf 뷰어 테스트용
	@GetMapping(value="/pdf/view")
	public String getPdf() throws Exception {
		return "sample/pdf";
	}
	
}
