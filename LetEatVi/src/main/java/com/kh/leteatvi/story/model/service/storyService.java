package com.kh.leteatvi.story.model.service;

import java.util.List;

import com.kh.leteatvi.story.model.vo.memberUsed;

public interface storyService {

	 memberUsed intoRoulette(String couponStatus);

	String checkRouletteAble(String userId);
	}
	

