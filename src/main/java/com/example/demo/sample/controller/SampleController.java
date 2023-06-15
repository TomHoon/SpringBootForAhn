package com.example.demo.sample.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SampleController {
	
	@RequestMapping(value="/tiles/dashboard", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView index(HttpServletRequest request, ModelAndView mv) {
		mv.addObject("test", "테스트 문자");
		mv.setViewName("sample/dashboard");
		return mv;
	}
	
	@GetMapping(value="/test/board")
	public String testBoard() {
		return "test/board";
	}
}
