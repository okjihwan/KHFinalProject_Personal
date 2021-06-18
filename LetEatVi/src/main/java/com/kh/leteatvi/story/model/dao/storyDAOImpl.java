package com.kh.leteatvi.story.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.story.model.vo.memberUsed;

@Repository
public class storyDAOImpl implements storyDAO {

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public memberUsed intoRoulette(String couponStatus) {
		
		return sqlSession.selectOne("roulette-mapper.intoRoulette");
	}

	@Override
	public String checkRouletteAble(String userId) {
		
		return sqlSession.selectOne("roulette-mapper.intoRoulette", userId);
	}

}
