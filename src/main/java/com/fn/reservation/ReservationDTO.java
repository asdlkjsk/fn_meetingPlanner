package com.fn.reservation;

public class ReservationDTO {

	private int num;
	private String revTime;
	private String id;
	private int price;
	private int revpeople;
	private int revCk;
	private int cancelCk;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getRevTime() {
		return revTime;
	}
	public void setRevTime(String revTime) {
		this.revTime = revTime;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getRevpeople() {
		return revpeople;
	}
	public void setRevpeople(int revpeople) {
		this.revpeople = revpeople;
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
