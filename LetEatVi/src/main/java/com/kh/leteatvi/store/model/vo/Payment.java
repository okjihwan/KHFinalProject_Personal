package com.kh.leteatvi.store.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Payment {

	
	// == input_form ==
	private String ono;
	private int paidAmount;
	private String userId;
	private String comment;
	private String addressee;
	private String address;
	private String phone;
	// == input_form ==
	
	private String userName;
	
//	private int pid;
	private Date oenroll;
}
