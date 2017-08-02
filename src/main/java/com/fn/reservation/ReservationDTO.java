package com.fn.reservation;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReservationDTO {

	private String cName;
	private String id;
	private String revName;
	private String revTerm;
	private String reqTerm;
	private int revPeople;
	private String phone;
	private String email;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
	private Date revDate;
	private int revCk;
	private int cancelCk;
	
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRevName() {
		return revName;
	}
	public void setRevName(String revName) {
		this.revName = revName;
	}
	public String getRevTerm() {
		return revTerm;
	}
	public void setRevTerm(String revTerm) {
		this.revTerm = revTerm;
	}
	public String getReqTerm() {
		return reqTerm;
	}
	public void setReqTerm(String reqTerm) {
		this.reqTerm = reqTerm;
	}
	public int getRevPeople() {
		return revPeople;
	}
	public void setRevPeople(int revPeople) {
		this.revPeople = revPeople;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRevDate() {
		return revDate;
	}
	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}
	public int getRevCk() {
		return revCk;
	}
	public void setRevCk(int revCk) {
		this.revCk = revCk;
	}
	public int getCancelCk() {
		return cancelCk;
	}
	public void setCancelCk(int cancelCk) {
		this.cancelCk = cancelCk;
	}
}
