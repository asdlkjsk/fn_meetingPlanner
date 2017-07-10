package com.fn.meeting;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.board.MeetingBoardDTO;
import com.fn.board.MeetingBoardService;
import com.fn.util.ListInfo;

@Controller
@RequestMapping(value="/meeting/**")
public class MeetingBoardController {
	
	@Autowired
	private MeetingBoardService meetingBoardService;
	
	//list
	@RequestMapping(value="meetingList", method=RequestMethod.GET)	
	public void meetingList(ListInfo listInfo, Model model) throws Exception {
		
	}
	
	//view
	@RequestMapping(value="meetingView", method=RequestMethod.GET)
	public void meetingView(Integer num, Model model) throws Exception {
		
	}
	
	//writeForm
	@RequestMapping(value="meetingWrite", method=RequestMethod.GET)
	public void meetingWrite(Model model) throws Exception {
		
	}
	
	//write
	@RequestMapping(value="meetingWrite", method=RequestMethod.POST)
	public void meetingWrite(MeetingBoardDTO meetingBoardDTO, RedirectAttributes redirectAttributes) throws Exception {
		
	}
	
	//updateForm
	@RequestMapping(value="meetingUpdate", method=RequestMethod.GET)
	public void meetingUpdate(Model model) throws Exception {
		
	}
	
	//update
	@RequestMapping(value="meetingUpdate", method=RequestMethod.POST)
	public void meetingUpdate(MeetingBoardDTO meetingBoardDTO, RedirectAttributes redirectAttributes) throws Exception {
		
	}
	
	//delete
	@RequestMapping(value="meetingDelete", method=RequestMethod.GET)
	public void meetingDelete(Integer num, RedirectAttributes redirectAttributes) throws Exception {
		
	}
}
