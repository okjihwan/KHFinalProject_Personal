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
