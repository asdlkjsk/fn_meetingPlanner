package com.fn.revtime;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class RevTimeDTO {

	private String cName;
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
	private Date rsDate;
	private int revPeople;
	
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public Date getRsDate() {
		return rsDate;
	}
	public void setRsDate(Date rsDate) {
		this.rsDate = rsDate;
	}
	public int getRevPeople() {
		return revPeople;
	}
	public void setRevPeople(int revPeople) {
		this.revPeople = revPeople;
	}
}
