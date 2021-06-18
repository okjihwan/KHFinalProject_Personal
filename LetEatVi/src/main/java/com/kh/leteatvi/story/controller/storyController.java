package com.kh.leteatvi.story.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.story.model.service.storyService;
import com.kh.leteatvi.story.model.vo.memberUsed;


@SessionAttributes({"member"})
@Controller
public class storyController {
	
	
	@Autowired
	storyService storyService;
	

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
	
	// 룰렛 페이지로 이동 시 아이디와 쿠폰획득 여부
	@RequestMapping("/story/goEventPage1.do")
	public String goEventPage1(Member member, Model model) {
		
		String couponStatus = storyService.checkRouletteAble(member.getUserId()); 

		model.addAttribute("couponStatus", couponStatus);
		
		System.out.println("무야호 : " + couponStatus);
		
		return "story/eventPage1";
	}
	
	
	
	
}
