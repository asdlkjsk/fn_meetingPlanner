package com.fn.meeting.planner;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.fn.util.ListInfo;
@Repository
public class MeetingDAO {
		
	@Inject
	private SqlSession session;
	private final static String NAMESPACE= "MeetingMapper.";
	
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
