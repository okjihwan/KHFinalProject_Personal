package com.kh.leteatvi.survey.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class surveyMember implements Serializable {

	private String userId;
	private int auth_id;
	private String password;
	private String userName;
	private int age;
	private String gender;
	private String email;
	private String phone;
	private String address;
	private Date enrollDate;
	private Date lastDate;
	private String status;
}
package com.kh.leteatvi.survey.model.vo;

import java.io.Serializable;
import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class surveyMember implements Serializable {

	private String userId;
	private String userName;
	private int age;
	private String gender;
	private SurveyContent[] surveyAnswer;
	private int height;
	private int weight;
}
