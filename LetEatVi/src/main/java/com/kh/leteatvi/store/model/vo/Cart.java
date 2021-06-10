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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public int getCquantity() {
		return cquantity;
	}

	public void setCquantity(int cquantity) {
		this.cquantity = cquantity;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
