package com.example.demo.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.board.dto.BoardDTO;
import com.example.demo.board.mapper.BoardMapper;

@Service
public class BoardService {
	
	@Autowired
	BoardMapper bMapper;
	
	public List<BoardDTO> getBoardList() throws Exception{
		return bMapper.getBoardList();
	}
}
