package com.fn.member.client;

import com.fn.member.MemberDTO;

public class ClientDTO extends MemberDTO{
	private String cId;

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}
}
