package com.example.demo.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

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
			// �븘�씠�뵒�� 鍮꾨�踰덊샇媛� 媛숈쑝硫�, �꽭�뀡�쓣 �뼸�뼱�꽌 �꽭�뀡�뿉 �쉶�썝�젙蹂대�� �꽔�뒗�떎.
			HttpSession session = request.getSession();
			session.setAttribute("signIn", resultDTO);
			return "redirect:/getBoard";
		}
		return "redirect:/login";
	}
	@GetMapping(value="/memberList")
	public ModelAndView getMember(ModelAndView mv) throws Exception {
		List<MemberDTO> list = mService.getMemberList();
		mv.addObject("MemberList", list);
		mv.addObject("test", "테스트");
		mv.setViewName("sample/member.web");
		
		return mv;
	}
	@GetMapping(value="/logout.do")
	public String logout(MemberDTO mDto, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();		
		session.invalidate();
		return "redirect:/getBoard";
	}
	@GetMapping(value="/userInfo")
	public String userInfo(MemberDTO mDto, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		mDto = (MemberDTO) session.getAttribute("signIn");
		if(mDto  == null) {
			return "redirect:/login";
		}
		return "sample/userInfo.web";
	}
	
	@GetMapping(value="/excel/download")
	public void excelDownload(HttpServletResponse response) throws Exception {
//		Workbook wb = new HSSFWorkbook(); // xls확장자
      Workbook wb = new XSSFWorkbook(); // xlsx 확장자 
      Sheet sheet = wb.createSheet("첫번째 시트");
      Row row = null;
      Cell cell = null;
      int rowNum = 0;

      // Header
      row = sheet.createRow(rowNum++);
      cell = row.createCell(0);
      cell.setCellValue("번호");
      cell = row.createCell(1);
      cell.setCellValue("이름");
      cell = row.createCell(2);
      cell.setCellValue("제목");

      // Body
      for (int i=0; i<3; i++) {
          row = sheet.createRow(rowNum++);
          cell = row.createCell(0);
          cell.setCellValue(i);
          cell = row.createCell(1);
          cell.setCellValue(i+"_name");
          cell = row.createCell(2);
          cell.setCellValue(i+"_title");
      }

      // 컨텐츠 타입과 파일명 지정
      response.setContentType("ms-vnd/excel");
//      response.setHeader("Content-Disposition", "attachment;filename=example.xls");
      response.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

      // Excel File Output
      wb.write(response.getOutputStream());
      wb.close();
	}
}
