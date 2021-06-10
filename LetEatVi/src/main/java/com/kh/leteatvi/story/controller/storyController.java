package com.kh.leteatvi.story.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;





@Controller
public class storyController {
	

	// 스토리페이지로 이동
	@RequestMapping("/story/goStory.do")
	public String goStory() {
		
		
		return "story/storyPage";
	}

	// 라이프페이지로 이동
	@RequestMapping("/story/goLife.do")
	public String goLife() {
		
		
		return "story/life";
	}
	
	// 뉴트리션페이지로 이동
	@RequestMapping("/story/goNutrition.do")
	public String goNutrition() {
		
		
		return "story/nutriTion";
	}
	
	// 이벤트페이지로 이동
	@RequestMapping("/story/goEvent.do")
	public String goEvent() {
		
		
		return "story/event";
	}
	
	// 룰렛 페이지로 이동
	@RequestMapping("/story/goEventPage1.do")
	public String goEventPage1() {
		
		
		
		return "story/eventPage1";
	}
	
	
	
	
}
