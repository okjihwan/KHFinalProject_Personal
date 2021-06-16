package com.kh.leteatvi.survey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.leteatvi.survey.model.vo.surveyMember;
@SessionAttributes("gst")
@Controller
public class surveyController {

	@RequestMapping("/survey/survey1.do")
	public String survey1(Model model) {
		
		System.out.println("설문 시작");
		
		return "survey/01_Survey";
	}
	
	@RequestMapping("/survey/survey2.do")
	public String survey2(surveyMember gst,Model model) {
		
		System.out.println("첫번째, 기본 정보 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		return "survey/02_Survey";
	}
	
	@RequestMapping("/survey/survey3.do")
	public String survey3(surveyMember gst,Model model) {
		
		System.out.println("두번째, 기본정보 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/03_Survey";
	}
}
