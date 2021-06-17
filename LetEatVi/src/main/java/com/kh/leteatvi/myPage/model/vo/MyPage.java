package com.kh.leteatvi.myPage.model.vo;

import java.io.Serializable;
import java.sql.Date;

import com.kh.leteatvi.member.model.vo.Member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyPage implements Serializable {
		
		private String userId;
		private String email;
		private int point;
		
		public MyPage(String userId, String email) {
			super();
			this.userId = userId;
			this.email = email;
		}
		
		

		
	

}
