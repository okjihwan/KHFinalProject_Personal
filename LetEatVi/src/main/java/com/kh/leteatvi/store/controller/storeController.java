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
		
		// 전체 상품 수
		int totalProductCount = storeService.selectAllProductCount();
		
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
		Product p = storeService.selectOneProduct(pno);
		
		model.addAttribute("selectProduct", p);
		model.addAttribute("pno", pno);
		
		return "store/product";
	}
	// ============================================== //
	
	
	// 결제하기 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/goPayment.do")
	public String goPayment(@RequestParam int pno, @RequestParam int qno, Model model) {
		Product p = storeService.selectOneProduct(pno);
		
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
		Cart cartProduct = new Cart(userId, pno);
		
		int addCart = storeService.insertOneProduct(cartProduct);
	}
	// ============================================== //
	
	
	// 카테고리별 버튼 클릭 시
	// ============================================== //
	@RequestMapping("/store/selectCategory.do")
	@ResponseBody
	public List selectCategory(@RequestParam int cno, @RequestParam(value="cPage", required=false, defaultValue="1") int cPage) {
		
		if(cno == 0) {
			List cList = storeService.selectAllCategory();
			
//			int numPerPage = 9;
//			
//			List<Map<String, String>> productList = storeService.selectProduct(cPage, numPerPage);
//			
//			int CategoryProductCount = storeService.selectAllProductCount();
//			
//			String pageBar = Utils.getPageBar(CategoryProductCount, cPage, numPerPage, "goStore.do");

			System.out.println(cList);
			
			return cList;
		}
		
		else {
			List cList = storeService.selectCategory(cno);
			
			System.out.println(cList);
			
			return cList;
		}
		
	}
	// ============================================== //
	
	@RequestMapping("/store/addCartWithQuantity.do")
	@ResponseBody
	public void addCartWithQuantity(@RequestParam String userId, @RequestParam int pno, @RequestParam int qno) {
		Cart cartProductWithQuantity = new Cart(userId, pno, qno);
		
		int addCartWithQuantity = storeService.insertOneProductWithQuantity(cartProductWithQuantity);
		
		System.out.println(addCartWithQuantity);
	}
	
}
