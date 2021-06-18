package com.kh.leteatvi.member.model.dao;

import java.util.HashMap;

import com.kh.leteatvi.member.model.vo.Member;

public interface MemberDAO {
	
	int insertMember(Member member);

	Member selectOneMember(String userId);

	int updateMember(Member member);

	int deleteMember(String userId);
	
	int checkIdDuplicate(HashMap<String, Object> hmap);

	int checkIdDuplicate(String userId);

}
