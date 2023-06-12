package com.example.demo.board.dto;

public class MemberDTO {
	String board_writer_idx;
	String board_writer;
	String board_writer_name;
	String board_writer_pw;
	String board_writer_phone;
	String board_writer_email;
	String board_writer_join_date;
	public String getBoard_writer_idx() {
		return board_writer_idx;
	}
	public void setBoard_writer_idx(String board_writer_idx) {
		this.board_writer_idx = board_writer_idx;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public String getBoard_writer_name() {
		return board_writer_name;
	}
	public void setBoard_writer_name(String board_writer_name) {
		this.board_writer_name = board_writer_name;
	}
	public String getBoard_writer_pw() {
		return board_writer_pw;
	}
	public void setBoard_writer_pw(String board_writer_pw) {
		this.board_writer_pw = board_writer_pw;
	}
	public String getBoard_writer_phone() {
		return board_writer_phone;
	}
	public void setBoard_writer_phone(String board_writer_phone) {
		this.board_writer_phone = board_writer_phone;
	}
	public String getBoard_writer_email() {
		return board_writer_email;
	}
	public void setBoard_writer_email(String board_writer_email) {
		this.board_writer_email = board_writer_email;
	}
	public String getBoard_writer_join_date() {
		return board_writer_join_date;
	}
	public void setBoard_writer_join_date(String board_writer_join_date) {
		this.board_writer_join_date = board_writer_join_date;
	}
	@Override
	public String toString() {
		return "MemberDTO [board_writer_idx=" + board_writer_idx + ", board_writer=" + board_writer
				+ ", board_writer_name=" + board_writer_name + ", board_writer_pw=" + board_writer_pw
				+ ", board_writer_phone=" + board_writer_phone + ", board_writer_email=" + board_writer_email
				+ ", board_writer_join_date=" + board_writer_join_date + "]";
	}
	

}
