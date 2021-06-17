package com.kh.leteatvi.store.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int pno;
	private String pname;
	private int pprice;
	private String pcontent;
	private String pcName;
	
}                  
