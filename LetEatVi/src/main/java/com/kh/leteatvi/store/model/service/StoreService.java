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

	List selectCategory(int cno);

	int insertOneProduct(Cart cartProduct2);

}
