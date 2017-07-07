package com.fn.meeting;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.vote.VoteDTO;
import com.fn.vote.votedate.VoteDateDTO;
import com.fn.vote.votedate.VoteDateServiceImpl;

@Controller
public class VoteDateController {
		
	@Inject
	private VoteDateServiceImpl voteDateServiceImpl;
	
	
	public String voteDateList(String mName,Model model){
		
		
		return "";
	}
	public String voteDateUpdate(VoteDateDTO voteDateDTO,Model model){
		return "";
	}
	
	public String voteDateWrite(VoteDateDTO voteDateDTO,RedirectAttributes rs){
	
		return "";
	}
	
	
	
}
