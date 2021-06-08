package com.kh.leteatvi.store.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.store.model.vo.Cart;
import com.kh.leteatvi.store.model.vo.Product;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int selectAllProductCount() {
		return sqlSession.selectOne("store.selectAllProductCount");
	}

	@Override
	public List<Map<String, String>> selectProduct(int cPage, int numPerPage) {
		RowBounds rows = new RowBounds((cPage-1) * numPerPage, numPerPage);

		return sqlSession.selectList("store.selectProduct", null, rows);
	}

	@Override
	public Product selectOneProduct(int pno) {
		return sqlSession.selectOne("store.selectOneProduct", pno);
	}

	@Override
	public List selectCategory(int cno) {
		return sqlSession.selectList("store.selectCategory", cno);
	}
	
	@Override
	public List selectAllCategory() {
		return sqlSession.selectList("store.selectAllCategory");
	}

	@Override
	public int insertOneProduct(Cart cartProduct2) {
		return sqlSession.insert("store.insertOneProduct", cartProduct2);
	}

	@Override
	public int insertOneProductWithQuantity(Cart cartProductWithQuantity) {
		return sqlSession.insert("store.insertOnePrdocutWithQuantity", cartProductWithQuantity);
	}

	


}
