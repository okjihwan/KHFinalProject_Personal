package com.kh.leteatvi.store.model.dao;

import java.util.List;
import java.util.Map;

import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Product;

public interface StoreDAO {

	int selectAllProductCount();

	List<Map<String, String>> selectProduct(int cPage, int numPerPage);

	Product selectOneProduct(int pno);

	List selectCategory(int cno);

	int insertOneProduct(Cart cartProduct2);
}
