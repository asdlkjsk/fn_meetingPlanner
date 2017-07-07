package com.fn.invite;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class InviteDAO {

	@Inject
	private SqlSession session;
	private final static String NAMESPACE = "InviteMapper.";
	
	public int inviteWrite(InviteDTO inviteDTO){
		
		return 0;
	}
	public int inviteDelete(InviteDTO inviteDTO){
		return 0;
	}
	public List<InviteDTO> inviteList(String receiveId){
		
		return null;
	}
	
	
	
}
