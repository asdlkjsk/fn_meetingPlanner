package com.fn.member.client;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.file.FileSaver;
import com.fn.member.MemberDTO;
import com.fn.member.MemberService;
import com.fn.util.ListInfo;

@Service
public class ClientServiceImpl implements MemberService{
	
	@Autowired
	private ClientDAOImpl clientDAOImpl;
	private FileSaver filesaver;
	
	@Override
	public MemberDTO memberLogin(MemberDTO memberDTO) throws Exception {
		return clientDAOImpl.memberLogin(memberDTO);
	}

	@Override
	public int memberJoin(MemberDTO memberDTO, HttpSession session) throws Exception {
				
		return clientDAOImpl.memberJoin(memberDTO);
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
