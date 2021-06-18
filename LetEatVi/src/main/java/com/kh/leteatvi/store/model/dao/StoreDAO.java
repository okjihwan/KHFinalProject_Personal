package com.kh.leteatvi.store.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;

public interface StoreDAO {

	int selectAllProductCount();

	List<Map<String, String>> selectProduct(int cPage, int numPerPage);

	Product selectOneProduct(int pno);

	List selectCategory(int cno);

	List selectAllCategory();
	
	Member selectOneMember(String userId);

	int insertPaymentInfo(Payment p);

	// 수량 없는 장바구니 추가
	//================================
	int selectOneCart(Cart cartProduct);
	int insertOneCart(Cart cartProduct);
	int deleteCart(Cart cartProduct);
	//================================
	
	
	// 수량 있는 장바구니 추가
	// ================================
	int insertOneCartWithQuantity(Cart cartCartWithQuantity);
	// ================================


	List selectAllCart(String userId);
}
