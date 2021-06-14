package com.kh.leteatvi.store.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Payment {

	private int orderId;
	private String userId;
	private int pid;
	private Date oenroll;
	private int paidAmount;
	private String pleaseRequest;
	private String receiptPerson;
	private String receiptPhone;
	private String receiptAddress;
	
}
