package com.fn.member;

import java.util.List;

import com.fn.util.ListInfo;


public interface MemberDAO {
	
	//login
	public MemberDTO memberLogin(String id, String pw, String grade)throws Exception;
	
	//join
	public int memberJoin(MemberDTO memberDTO) throws Exception;

	//update
	public int memberUpdate(MemberDTO memberDTO) throws Exception;
	
	//delete
	public int memberDelete(String id) throws Exception;

	//view
	public MemberDTO memberView(String id) throws Exception;
	
	//list
	public List<MemberDTO> memberList(ListInfo listInfo) throws Exception;
	
	
}
