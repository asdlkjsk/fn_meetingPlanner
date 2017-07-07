package com.fn.invite;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class InviteService {

		@Inject
		private InviteDAO inviteDAO;
		
	
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
