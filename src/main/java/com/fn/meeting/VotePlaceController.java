package com.fn.meeting;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.vote.VoteDTO;
import com.fn.vote.voteplace.VotePlaceDTO;
import com.fn.vote.voteplace.VotePlaceServiceImpl;

@Controller
public class VotePlaceController {

	@Inject
	private VotePlaceServiceImpl votePlaceServiceImpl;
	
	
	public String votePlaceList(String mName,Model model){
		 
		return ""; 
	}
	public String votePlaceUpdate(VotePlaceDTO votePlaceDTO,Model model){
		
		return "";
	}
	public String votePlaceWrite(VotePlaceDTO votePlaceDTO,RedirectAttributes rs){
		
		return "";
		
	}
	
}
