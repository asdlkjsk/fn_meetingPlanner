package com.fn.meeting;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.invite.InviteDTO;
import com.fn.invite.InviteService;

@Controller
public class InviteController {

	@Inject
	private InviteService inviteService;
	
	
	public String inviteWrite(InviteDTO inviteDTO,RedirectAttributes rd){
		
		return null;
	}
	public String inviteDelete(InviteDTO inviteDTO, RedirectAttributes rd){
		return null;
	}
	public List<InviteDTO> inviteList(String receiveId,Model model){
		
		return null;
	}
	
	
	
}
