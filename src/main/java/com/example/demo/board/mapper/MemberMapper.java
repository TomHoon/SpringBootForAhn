package com.example.demo.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.board.dto.MemberDTO;

@Mapper
@Repository
public interface MemberMapper {
	public List<MemberDTO> getMemberList() throws Exception;
	public MemberDTO searchMember(MemberDTO mDto) throws Exception;
	public int joinMember(MemberDTO mDto) throws Exception;
	public MemberDTO login(MemberDTO mDto) throws Exception;
}
