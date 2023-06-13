package com.example.demo.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.board.dto.MemberDTO;
import com.example.demo.board.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService mService;
	
	@PostMapping(value="join.do")
	public String joinMember(MemberDTO mDto) throws Exception{
		mDto.setBoard_writer_join_date("2023-06-12");
		mService.joinMember(mDto);
		return "redirect:/getBoard";
	}
	@PostMapping(value="login.do")
	public String login(MemberDTO mDto, HttpServletRequest request) throws Exception{
		MemberDTO resultDTO = mService.login(mDto);
		if(resultDTO.getBoard_writer().equals(mDto.getBoard_writer())&&
			resultDTO.getBoard_writer_pw().equals(mDto.getBoard_writer_pw())) {
			// 아이디와 비밀번호가 같으면, 세션을 얻어서 세션에 회원정보를 넣는다.
			HttpSession session = request.getSession();
			session.setAttribute("signIn", resultDTO);
			return "redirect:/getBoard";
		}
		return "redirect:/login";
	}
	@GetMapping(value="logout.do")
	public String logout(MemberDTO mDto, HttpServletRequest request) throws Exception{
		// 세션 모두 초기화
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/getBoard";
	}
}
