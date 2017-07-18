package com.fn.meeting;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.fn.member.MemberDTO;
import com.fn.member.client.ClientDAOImpl;
import com.fn.member.client.ClientDTO;
import com.fn.member.client.ClientServiceImpl;

public class logintest extends MyAbstractTestUnit {
	
	@Autowired
	private ClientDAOImpl cliDAO;
	@Autowired
	private ClientServiceImpl clientService;
	private ClientDTO clientto;
	private MemberDTO memberDTO;
	private ClientDTO clientDTO;
	
	@Test
	public void test() throws Exception {
		clientDTO = new ClientDTO();
		memberDTO = new MemberDTO();
		memberDTO.setId("qwe");
		memberDTO.setPw("qwe");
		
		
		memberDTO = clientService.memberLogin(memberDTO);
		
	
		assertNotNull(memberDTO);
		
	}

}
