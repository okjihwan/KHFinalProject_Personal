package com.kh.leteatvi.story.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.leteatvi.story.model.dao.storyDAO;
import com.kh.leteatvi.story.model.vo.memberUsed;

@Service
public class storyServiceImple implements storyService {

	@Autowired
	storyDAO storyDAO;

	@Override
	public memberUsed intoRoulette(String couponStatus) {
		
		return storyDAO.intoRoulette(couponStatus);
	}

	@Override
	public String checkRouletteAble(String userId) {
		
		return storyDAO.checkRouletteAble(userId);
	}

}
