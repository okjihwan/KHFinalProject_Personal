<<<<<<< HEAD
package com.kh.leteatvi.store.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Payment {

	private String orderPerson;
	private String orderEmail;
	private String orderPhone;
	private String receiptPerson;
	private String receiptPhone;
	private String receiptAddress;
	
}
=======
package com.kh.leteatvi.store.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Payment {

	private String orderPerson;
	private String orderEmail;
	private String orderPhone;
	private String receiptPerson;
	private String receiptPhone;
	private String receiptAddress;
	public String getOrderPerson() {
		return orderPerson;
	}
	public void setOrderPerson(String orderPerson) {
		this.orderPerson = orderPerson;
	}
	public String getOrderEmail() {
		return orderEmail;
	}
	public void setOrderEmail(String orderEmail) {
		this.orderEmail = orderEmail;
	}
	public String getOrderPhone() {
		return orderPhone;
	}
	public void setOrderPhone(String orderPhone) {
		this.orderPhone = orderPhone;
	}
	public String getReceiptPerson() {
		return receiptPerson;
	}
	public void setReceiptPerson(String receiptPerson) {
		this.receiptPerson = receiptPerson;
	}
	public String getReceiptPhone() {
		return receiptPhone;
	}
	public void setReceiptPhone(String receiptPhone) {
		this.receiptPhone = receiptPhone;
	}
	public String getReceiptAddress() {
		return receiptAddress;
	}
	public void setReceiptAddress(String receiptAddress) {
		this.receiptAddress = receiptAddress;
	}
	
	
}
>>>>>>> refs/remotes/origin/minmin
