package com.fn.board;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.util.ListInfo;

@Repository
public class MeetingBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="MeetingBoardMapper.";
	
	//insert
	public int write(MeetingBoardDTO meetingBoardDTO) throws Exception {
		return 0;
	}
	
	//update
	public int update(MeetingBoardDAO meetingBoardDAO) throws Exception {
		return 0;
	}
	
	//delete
	public int delete(int num) throws Exception {
		return 0;
	}
	
	//view
	public MeetingBoardDTO view(int num) throws Exception {
		MeetingBoardDTO meetingBoardDTO = new MeetingBoardDTO();
		return meetingBoardDTO;
	}
	
	//list
	public List<MeetingBoardDTO> list(ListInfo listInfo) throws Exception {
		List<MeetingBoardDTO> list = new ArrayList<MeetingBoardDTO>();
		return list;
	}
	
	//count
	public int count(ListInfo listInfo) throws Exception {
		return 0;
	}
}
