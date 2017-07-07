package com.fn.revtime;

import java.sql.Date;

public class RevTimeDTO {

	
	
	private int num;
	private String cName;
	private String rsTime;
	private Date rsDate;
	private int revPeople;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getRsTime() {
		return rsTime;
	}
	public void setRsTime(String rsTime) {
		this.rsTime = rsTime;
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
