package com.kh.leteatvi.story.model.dao;

import com.kh.leteatvi.story.model.vo.memberUsed;

public interface storyDAO {

	memberUsed intoRoulette(String couponStatus);

	String checkRouletteAble(String userId);
}
