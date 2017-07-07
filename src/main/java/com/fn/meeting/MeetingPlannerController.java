package com.fn.meeting;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.util.ListInfo;
import com.fn.meeting.planner.MeetingDTO;

@Controller
public class MeetingPlannerController {

	
		
public String meetingWrite(MeetingDTO meetingDTO,RedirectAttributes rd){
		
		return null;
	}
	public String meetingUpdate(MeetingDTO meetingDTO, RedirectAttributes rd){
		
		return null;
	}
	public String meetingDelete(MeetingDTO meetingDTO,RedirectAttributes rd){
		return null;
	}
	public int meetingCount(){
		return 0;
	}
	public MeetingDTO meetingView(String mName,Model model){
		return null;
	}
	public List<MeetingDTO> meetingList(ListInfo listInfo,Model model){
		return null;
	}
	
}
