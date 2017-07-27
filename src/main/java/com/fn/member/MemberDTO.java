package com.fn.member;

import org.springframework.web.multipart.MultipartFile;

public class MemberDTO {
	
	private String id;
	private String pw;
	private String name;
	private Integer age;
	private String gender;
	private String email;
	private String phone;
	private String grade;
	private MultipartFile f1;
	//mgCheck가 필요해서 추가해봄(07.26)
	private int mgCheck;

	public int getMgCheck() {
		return mgCheck;
	}
	public void setMgCheck(int mgCheck) {
		this.mgCheck = mgCheck;
	}
	public MultipartFile getF1() {
		return f1;
	}
	public void setF1(MultipartFile f1) {
		this.f1 = f1;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}

	
	

}
