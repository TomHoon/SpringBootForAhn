package com.example.demo.board.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.board.dto.BoardDTO;
import com.example.demo.board.dto.MemberDTO;
import com.example.demo.board.service.BoardService;
import com.example.demo.board.service.MemberService;

@RestController
public class RestApiController {
	
	@Autowired
	MemberService mService;
	
	@Autowired 
	BoardService bService;
	
	@GetMapping(value="/getMember")
	public List<MemberDTO> getMember() throws Exception{
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		list = mService.getMemberList();
		return list;
	}
	
	@PostMapping(value="/searchMember")
	public MemberDTO searchMember(MemberDTO mDto) throws Exception {
		mDto = mService.searchMember(mDto);
		return mDto;
	}
	
	@GetMapping(value="/restBoard")
	public List<BoardDTO> getBoard() throws Exception {
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		list = bService.getBoardList();
		return list;
	}
}
