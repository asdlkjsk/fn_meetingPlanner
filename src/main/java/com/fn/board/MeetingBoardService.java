package com.fn.board;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.util.ListInfo;

@Service
public class MeetingBoardService {
	
	@Autowired
	private MeetingBoardDAO meetingBoardDAO;
	
	//list
	public List<MeetingBoardDTO> boardList(ListInfo listInfo) throws Exception {
		return meetingBoardDAO.list(listInfo);
	}
	
	//view
	public MeetingBoardDTO boardView(int num) throws Exception {
		return meetingBoardDAO.view(num);
	}
	
	//write
	public int write(MeetingBoardDTO meetingBoardDTO) throws Exception {
		return meetingBoardDAO.write(meetingBoardDTO);
	}
	
	//update
	public int update(MeetingBoardDTO meetingBoardDTO) throws Exception {
		return meetingBoardDAO.update(meetingBoardDAO);
	}
	
	//delete
	public int delete(int num) throws Exception {
		return meetingBoardDAO.delete(num);
	}
}
