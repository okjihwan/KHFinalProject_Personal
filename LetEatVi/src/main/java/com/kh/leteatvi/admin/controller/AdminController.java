package com.kh.leteatvi.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.leteatvi.admin.model.service.AdminService;
import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.member.model.service.MemberService;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.service.StoreService;

//@SessionAttributes({"member"})
@Controller
public class AdminController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	StoreService storeService;
	
	@Autowired
	AdminService adminService;


	/**
	 * 
	 * Auth : DABABY
	 * Date : 2021-06-11
	 * 관리자 페이지 메인으로 이동
	 * 
	 * */
	@RequestMapping("/admin/adminMain.do")
	public String adminMain() {
		
		// 오늘 가입한 회원 수
		// memberService.selectOneMember(null);
		
		// 오늘 판매한 금액
		
		// 오늘 판매한 상품 top5
		
		// 
		
		return "/admin/adminMain";

	}
	
	
	// 재고 관리, 상품 등록 페이지
	@RequestMapping("/admin/adminProduct.do")
	public String adminProduct(Model model) {
		
		
		// 처음에는 모든 상품 정보가 나오도록
		List<AdminProduct> ap = adminService.searchProductAll();
		
		model.addAttribute("ap", ap);
		
		return "/admin/adminProduct";

	}
	
	// 상품 조회
	// 매개변수로 카테고리와 상품 이름 받음.
	@RequestMapping("/admin/adminSearchProduct.do")
	@ResponseBody
	public List<AdminProduct> productSearch(String pname, Model model) {
		
		
		// Debug 1 - Check Parameter
		System.out.println(pname);

		List<AdminProduct> ap = adminService.searchProduct(pname);
		
		// Debug 2 - Check Result
		System.out.println(ap);
		
		model.addAttribute("ap", ap);
		
		return ap;

		// return "/admin/adminProduct";

	}
	
	// 상품 등록
	// 매개변수로 카테고리와 상품 이름 받음.
	@RequestMapping("/admin/adminInsertProduct.do")
	@ResponseBody
	public int productInsert(AdminProduct p) {
		
		
		// Debug 1 - Check Parameter
		System.out.println(p);

		int result = adminService.insertProduct(p);
		
		// Debug 2 - Check Result
		System.out.println(result);
	
		
		return result;

		// return "/admin/adminProduct";

	}
	
	
	// 회원 관리 페이지
	@RequestMapping("/admin/adminMember.do")
	public String adminMember() {
		
		return "/admin/adminMember";

	}
	
	// 회원 조회
	
	@RequestMapping("/admin/adminSearchMember.do")
	@ResponseBody
	public List<Member> memberSearch(String userId, Model model) {
		
		// Debug 1 - Check Parameter
		System.out.println(userId);		
		
		List<Member> mb = adminService.searchMember(userId);
		
		// Debug 2 - Check Result
		System.out.println(mb);
		
		model.addAttribute("mb", mb);
		
		return mb;

	}
	
	
	

}