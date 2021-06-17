package com.kh.leteatvi.admin.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.leteatvi.admin.model.dao.AdminDAO;
import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.member.model.dao.MemberDAO;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.dao.StoreDAO;
import com.kh.leteatvi.store.model.vo.Product;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	StoreDAO storeDAO;
	
	@Autowired
	MemberDAO memberDAO;
	
	@Autowired
	AdminDAO adminDAO;
	
	
	// 상품 전체 조회
	@Override
	public List<AdminProduct> searchProductAll() {
		return adminDAO.searchProductAll();
	}

	// 상품조회
	@Override
	public List<AdminProduct> searchProduct(String pname) {
		return adminDAO.searchProduct(pname);
	}
	
	// 상품등록
	@Override
	public int insertProduct(AdminProduct p) {
		
		return adminDAO.insertProduct(p);
	}


	// 회원조회
	@Override
	public List<Member> searchMember(String userId) {
		return adminDAO.searchMember(userId);
	}


}
