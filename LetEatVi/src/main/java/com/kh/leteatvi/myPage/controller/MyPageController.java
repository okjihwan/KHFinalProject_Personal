package com.kh.leteatvi.myPage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {
	
	@RequestMapping(value = "/myPage/myPageHome.do")
	public String myPage() throws Exception {
		
		return "myPage/myPageHome";
	}
	
	@RequestMapping(value = "/myPage/orderList.do")
	public String myOrderList() throws Exception {
		
		return "myPage/orderDetail";
	}

}
