package com.fn.member.client;

import com.fn.member.MemberDTO;

public class ClientDTO extends MemberDTO{
	private String cId;
	private String kakaoimg;

	public String getKakaoimg() {
		return kakaoimg;
	}

	public void setKakaoimg(String kakaoimg) {
		this.kakaoimg = kakaoimg;
	}

	public String getcId() {
		return cId;
	}

	public void setcId(String cId) {
		this.cId = cId;
	}
}
