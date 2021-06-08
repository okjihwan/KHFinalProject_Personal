package com.kh.leteatvi.store.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cart implements Serializable{

	private static final long serialVersionUID = 2L;
	
	private String userId;
	private int pno;
	private int cno;
	private int cquantity;
	
	public Cart(String userId, int pno) {
		this.userId = userId;
		this.pno = pno;
	}

	public Cart(String userId, int pno, int cquantity) {
		this.userId = userId;
		this.pno = pno;
		this.cquantity = cquantity;
	}
	
	

}
