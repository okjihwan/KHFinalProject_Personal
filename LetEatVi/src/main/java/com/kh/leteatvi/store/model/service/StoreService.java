package com.kh.leteatvi.store.model.service;

import java.util.List;
import java.util.Map;

import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Product;

public interface StoreService {

	int selectAllProductCount();

	List<Map<String, String>> selectProduct(int cPage, int numPerPage);

	Product selectOneProduct(int pno);

	Product addCart(int pno);

	// 카테고리 전체 상품
	List selectAllCategory();
	
	// 카테고리 별 상품
	List selectCategory(int cno);

	int insertOneProduct(Cart cartProduct2);

	int insertOneProductWithQuantity(Cart cartProductWithQuantity);
}
