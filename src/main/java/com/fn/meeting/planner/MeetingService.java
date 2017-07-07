package com.fn.meeting.planner;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fn.util.ListInfo;

@Service
public class MeetingService {
	@Inject	
	private MeetingDAO meetingDAO;
	
	public int meetingWrite(MeetingDTO meetingDTO){
		
		return 0;
	}
	public int meetingUpdate(MeetingDTO meetingDTO){
		
		return 0;
	}
	public int meetingDelete(MeetingDTO meetingDTO){
		return 0;
	}
	public int meetingCount(){
		return 0;
	}
	public MeetingDTO meetingView(String mName){
		return null;
	}
	public List<MeetingDTO> meetingList(ListInfo listInfo){
		return null;
	}
}
