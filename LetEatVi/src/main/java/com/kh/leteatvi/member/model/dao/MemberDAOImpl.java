package com.kh.leteatvi.member.model.dao;

import java.util.HashMap;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.leteatvi.member.model.vo.Member;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertMember(Member member) {
		
		return sqlSession.insert("member-mapper.insertMember", member);
	}

	@Override
	public Member selectOneMember(String userId) {
		
		return sqlSession.selectOne("member-mapper.selectOne", userId);
	}

	@Override
	public int updateMember(Member member) {
		
		return sqlSession.update("member-mapper.updateMember", member);
	}

	@Override
	public int deleteMember(String userId) {
		
		return sqlSession.delete("member-mapper.deleteMember", userId);
	}

	@Override
	public int checkIdDuplicate(HashMap<String, Object> hmap) {
		
		System.out.println("[before] : " + hmap);
		
		sqlSession.selectOne("member-mapper.checkIdDuplicate", hmap);
		
		System.out.println("[After] : " + hmap);
		
		return (Integer)hmap.get("result");
	}

	@Override
	public int checkIdDuplicate(String userId) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}