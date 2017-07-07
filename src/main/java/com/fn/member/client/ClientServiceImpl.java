package com.fn.member.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.member.MemberDTO;
import com.fn.member.MemberService;
import com.fn.util.ListInfo;

@Service
public class ClientServiceImpl implements MemberService{
	
	@Override
	public MemberDTO memberLogin(String id, String pw, String grade) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int memberJoin(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberUpdate(MemberDTO memberDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int memberDelete(String id) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDTO memberView(String id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberDTO> memberList(ListInfo listInfo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
