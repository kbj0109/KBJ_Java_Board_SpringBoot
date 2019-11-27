package com.board.kbj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	// 프로젝트 기본 페이지, redirect 시켜서 boardList로 보내주자
	@RequestMapping("/")
	private String boardList() throws Exception {
		return "redirect:/boardList";
	}
}
