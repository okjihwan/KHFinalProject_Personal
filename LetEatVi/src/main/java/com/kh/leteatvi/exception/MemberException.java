package com.kh.leteatvi.exception;

public class MemberException extends RuntimeException {

	public MemberException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberException(String message) {
		super("회원 ERROR :: " + message);
	}

	
}
