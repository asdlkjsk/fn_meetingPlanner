package com.fn.message;

import java.sql.Date;

public class SendMessageDTO {
	private int megNum;
	private String sendId;
	private String contents;
	private String recvId;
	private Date sendDate;
	
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
