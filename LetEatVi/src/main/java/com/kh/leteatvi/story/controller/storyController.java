package com.kh.leteatvi.story.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class storyController {
	
	@RequestMapping("/story/goStory.do")
	public String goStory() {
		
		System.out.println("무야호");
		
		return "story/storyPage";
	}

}
