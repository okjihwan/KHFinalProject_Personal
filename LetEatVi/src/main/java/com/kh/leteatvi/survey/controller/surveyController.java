package com.kh.leteatvi.survey.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.leteatvi.survey.model.vo.surveyMember;
@SessionAttributes("gst")
@Controller
public class surveyController {

	@RequestMapping("/survey/survey.do")
	public String survey(Model model) {
		
		System.out.println("설문 시작");
		
		return "survey/startSurvey";
	}
	
	@RequestMapping("/survey/survey1.do")
	public String survey1(Model model) {
		
		System.out.println("첫번째, 기본 정보 입력");
		return "survey/01_Survey";
	}
	
	@RequestMapping("/survey/survey2.do")
	public String survey2(surveyMember gst,Model model) {
		
		System.out.println("두번째, 기본정보 입력");
		
		return "survey/02_Survey";
	}
	
	@RequestMapping("/survey/survey3.do")
	public String survey3(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		
		return "survey/03_Survey";
	}
	
	@RequestMapping("/survey/survey4.do")
	public String survey4(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/04_Survey";
	}
	
	@RequestMapping("/survey/survey5.do")
	public String survey5(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/05_Survey";
	}
	
	@RequestMapping("/survey/survey6.do")
	public String survey6(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/06_Survey";
	}
	
	@RequestMapping("/survey/survey7.do")
	public String survey7(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/07_Survey";
	}
	
	@RequestMapping("/survey/survey8.do")
	public String survey8(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/08_Survey";
	}
	
	@RequestMapping("/survey/survey9.do")
	public String survey9(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/09_Survey";
	}
	
	@RequestMapping("/survey/survey10.do")
	public String survey10(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/10_Survey";
	}
	
	@RequestMapping("/survey/survey11.do")
	public String survey11(surveyMember gst,Model model) {
		
		System.out.println("세번째, 관심/필요 입력");
		System.out.println(gst);
		model.addAttribute("gst", gst);
		
		return "survey/11_Survey";
	}
}
