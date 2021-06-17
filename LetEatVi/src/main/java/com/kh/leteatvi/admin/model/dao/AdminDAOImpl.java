package com.kh.leteatvi.admin.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.admin.model.vo.AdminProduct;
import com.kh.leteatvi.member.model.vo.Member;
import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Payment;
import com.kh.leteatvi.store.model.vo.Product;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	

	// 상품 전체 조회
	@Override
	public List<AdminProduct> searchProductAll() {
		return sqlSession.selectList("admin-mapper.searchProduct");
	}
	

	// 상품 조회
	@Override
	public List<AdminProduct> searchProduct(String pname) {
		return sqlSession.selectList("admin-mapper.searchProduct", pname);
	}
	
	// 상품등록
	@Override
	public int insertProduct(AdminProduct p) {
		
		return sqlSession.insert("admin-mapper.insertProduct", p);
	}


	// 회원조회
	@Override
	public List<Member> searchMember(String userId) {

		return sqlSession.selectList("admin-mapper.searchMember", userId);
	}
	

}
