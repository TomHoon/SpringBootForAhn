package com.example.demo.board.dto;

import org.springframework.stereotype.Repository;

@Repository
public class BoardDTO {
	String board_idx;
	String board_writer;
	String board_title;
	String board_contents;
	String board_view_count;
	String file_idx; 
	String board_write_date;
	String board_public_fl;
	String board_del_yn;
	public String getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(String board_idx) {
		this.board_idx = board_idx;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_contents() {
		return board_contents;
	}
	public void setBoard_contents(String board_contents) {
		this.board_contents = board_contents;
	}
	public String getBoard_view_count() {
		return board_view_count;
	}
	public void setBoard_view_count(String board_view_count) {
		this.board_view_count = board_view_count;
	}
	public String getFile_idx() {
		return file_idx;
	}
	public void setFile_idx(String file_idx) {
		this.file_idx = file_idx;
	}
	public String getBoard_write_date() {
		return board_write_date;
	}
	public void setBoard_write_date(String board_write_date) {
		this.board_write_date = board_write_date;
	}
	public String getBoard_public_fl() {
		return board_public_fl;
	}
	public void setBoard_public_fl(String board_public_fl) {
		this.board_public_fl = board_public_fl;
	}
	public String getBoard_del_yn() {
		return board_del_yn;
	}
	public void setBoard_del_yn(String board_del_yn) {
		this.board_del_yn = board_del_yn;
	}
	@Override
	public String toString() {
		return "BoardDTO [board_idx=" + board_idx + ", board_writer=" + board_writer + ", board_title=" + board_title
				+ ", board_contents=" + board_contents + ", board_view_count=" + board_view_count + ", file_idx="
				+ file_idx + ", board_write_date=" + board_write_date + ", board_public_fl=" + board_public_fl
				+ ", board_del_yn=" + board_del_yn + "]";
	}
	
	
}
