package com.example.demo.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.demo.board.dto.BoardDTO;

@Mapper
@Repository
public interface BoardMapper {
	public List<BoardDTO> getBoardList() throws Exception;

}
