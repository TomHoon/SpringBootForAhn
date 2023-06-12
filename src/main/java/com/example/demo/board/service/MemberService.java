package com.example.demo.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.board.dto.MemberDTO;
import com.example.demo.board.mapper.MemberMapper;

@Service
public class MemberService {
	
	@Autowired
	MemberMapper mMapper;
	
	public List<MemberDTO> getMemberList() throws Exception{
		return mMapper.getMemberList();
	}
	
	public MemberDTO searchMember(MemberDTO mDto) throws Exception{
		return mMapper.searchMember(mDto);
	}
	
	public int joinMember(MemberDTO mDto) throws Exception {
		return mMapper.joinMember(mDto);
	}
	
	public MemberDTO login(MemberDTO mDto) throws Exception {
		return mMapper.login(mDto);
	}
}
