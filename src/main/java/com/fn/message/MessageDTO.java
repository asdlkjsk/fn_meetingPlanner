package com.fn.message;

import java.sql.Date;

public class MessageDTO{
	private int megNum;
	private String sendId;
	private String contents;
	private String recvId;
	private int mgCheck;
	private Date sendDate;
	//rcheck 추가(07.26)
	private int rcheck;
	//decrenum 추가(08.02)
	private int decrenum;
	
	
	public int getDecrenum() {
		return decrenum;
	}
	public void setDecrenum(int decrenum) {
		this.decrenum = decrenum;
	}
	public int getRcheck() {
		return rcheck;
	}
	public void setRcheck(int rcheck) {
		this.rcheck = rcheck;
	}
	public int getMgCheck() {
		return mgCheck;
	}
	public void setMgCheck(int mgCheck) {
		this.mgCheck = mgCheck;
	}
	
	public int getMegNum() {
		return megNum;
	}
	public void setMegNum(int megNum) {
		this.megNum = megNum;
	}
	public String getSendId() {
		return sendId;
	}
	public void setSendId(String sendId) {
		this.sendId = sendId;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRecvId() {
		return recvId;
	}
	public void setRecvId(String recvId) {
		this.recvId = recvId;
	}
	public Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}
		
	
	
}
