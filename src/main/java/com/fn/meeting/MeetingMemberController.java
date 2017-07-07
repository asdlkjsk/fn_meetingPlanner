package com.fn.meeting;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.meetingmember.MeetingMemberDTO;
import com.fn.meetingmember.MeetingMemberService;
@Controller
public class MeetingMemberController {

	@Inject
	private MeetingMemberService meetingMemberService;
	
	
	public String meetingMemberWrite(MeetingMemberDTO meetingMemberDTO , RedirectAttributes rd) {

		return "";
	}

	public String meetingMemberUpdate(String mName,Model model) {
		return "";
	}

	public String meetingMemberDelete(String mName,RedirectAttributes rd) {
		return "";
	}

	public MeetingMemberDTO meetingMemberView(String mName,Model model) {

		return null;
	}
	
	
	
	
	
	
	
}
