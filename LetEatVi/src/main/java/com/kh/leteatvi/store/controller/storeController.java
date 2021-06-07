package com.kh.leteatvi.store.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.leteatvi.common.Utils;
import com.kh.leteatvi.store.model.service.StoreService;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Product;

@Controller
public class storeController {
	
	@Autowired
	StoreService storeService;
	
	// 다른 페이지에서 스토어 페이지 선택 시
	// ============================================== //
	@RequestMapping("/store/goStore.do")
	public String goStore(@RequestParam(value="cPage", required=false, defaultValue="1") int cPage, Model model) {
		// 한 페이지당 상품 수
		int numPerPage = 9;
		
		List<Map<String, String>> productList = storeService.selectProduct(cPage, numPerPage);
		System.out.println("상품 리스트 : " + productList);
		
		// 전체 상품 수
		int totalProductCount = storeService.selectAllProductCount();
		System.out.println("전체 상품 수 : " + totalProductCount);
		
		String pageBar = Utils.getPageBar(totalProductCount, cPage, numPerPage, "goStore.do");
		
		model.addAttribute("productList", productList);
		model.addAttribute("totalProductCount", totalProductCount);
		model.addAttribute("numPerPage", numPerPage);
		model.addAttribute("pageBar", pageBar);
		
		return "store/storeHome";
	}
	// ============================================== //
	
	
	// 스토어 페이지에서 상품 상세보기 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/selectProduct.do")
	public String selectProduct(@RequestParam int pno, Model model) {
		System.out.println("선택한 상품 번호 : " + pno);
		
		Product p = storeService.selectOneProduct(pno);
		System.out.println("선택한 상품 정보 : " + p);
		
		model.addAttribute("selectProduct", p);
		model.addAttribute("pno", pno);
		
		return "store/product";
	}
	// ============================================== //
	
	
	// 결제하기 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/goPayment.do")
	public String goPayment(@RequestParam int pno, @RequestParam int qno, Model model) {
		System.out.println("결제 페이지 이동 확인");
		System.out.println("결제 페이지로 넘어갈 상품 번호 : " + pno);
		System.out.println("결제 페이지로 넘어갈 상품 갯수 : " + qno);
		
		Product p = storeService.selectOneProduct(pno);
		System.out.println("선택한 상품 정보 : " + p);
		
		model.addAttribute("selectProduct", p);
		model.addAttribute("qno", qno);
		
		return "store/payment";
	}
	// ============================================== //
	
	
	// 장바구니 추가 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/addCart.do")
	@ResponseBody
	public void addCart(@RequestParam int pno, @RequestParam String userId) {
		System.out.println("ajax 호출 확인");
		System.out.println("pno 호출 확인 :" + pno);
		System.out.println("userId 호출 확인 : " + userId);
		
		Cart cartProduct = new Cart(userId, pno);
		
		int p2 = storeService.insertOneProduct(cartProduct);
	}
	// ============================================== //
	
	
	// 카테고리별 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/selectCategory.do")
	@ResponseBody
	public List selectCategory(@RequestParam int cno) {
		
		List cList = storeService.selectCategory(cno);
		
		System.out.println("카테고리 선택 : " + cList);
		
		return cList;
	}
	// ============================================== //
	
}
