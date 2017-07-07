package com.fn.meetingmember;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class MeetingMemberService {
@Inject
private MeetingMemberDAO meetingMemberDAO;

		
	
	public int meetingMemberWrite(MeetingMemberDTO meetingMemberDTO) {

		return 0;
	}

	public int meetingMemberUpdate(String mName) {
		return 0;    
	}

	public int meetingMemberDelete(String mName) {
		return 0;
	}

	public MeetingMemberDTO meetingMemberView(String mName) {

		return null;
	}
	
	
}
