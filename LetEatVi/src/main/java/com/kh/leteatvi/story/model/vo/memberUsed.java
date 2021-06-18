package com.kh.leteatvi.story.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class memberUsed implements Serializable {
	
	private String userId;
	private String couponStatus;
	
}
