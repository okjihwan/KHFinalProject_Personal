package com.kh.leteatvi.store.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.leteatvi.store.model.dao.StoreDAO;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Product;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDAO storeDAO;

	// 전체 상품 수 확인
	@Override
	public int selectAllProductCount() {
		return storeDAO.selectAllProductCount();
	}

	// 페이징 처리
	@Override
	public List<Map<String, String>> selectProduct(int cPage, int numPerPage) {
		return storeDAO.selectProduct(cPage, numPerPage);
	}

	@Override
	public Product selectOneProduct(int pno) {
		return storeDAO.selectOneProduct(pno);
	}

	@Override
	public Product addCart(int pno) {
		return storeDAO.selectOneProduct(pno);
	}

	@Override
	public List selectCategory(int cno) {
		return storeDAO.selectCategory(cno);
	}

	@Override
	public int insertOneProduct(Cart cartProduct2) {
		return storeDAO.insertOneProduct(cartProduct2);
	}


}
