package com.fn.message;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fn.util.ListInfo;

@Repository
public class SendMessageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "SendMessageMapper.";
	
	//insert
	public int sendWrite(SendMessageDTO sendMessageDTO) throws Exception {
		return 0;
	}
	
	//delete
	public int sendDelete(int megNum) throws Exception {
		return 0;
	}
	
	//view
	public SendMessageDTO sendView(int megNum) throws Exception {
		SendMessageDTO sendMessageDTO = new SendMessageDTO();
		return sendMessageDTO;
	}
	
	//list
	public List<SendMessageDTO> sendList(ListInfo listInfo) throws Exception {
		List<SendMessageDTO> ar = new ArrayList<SendMessageDTO>();
		return ar;
	}
	
	//getCount
	public int sendCount(ListInfo listInfo) throws Exception {
		return 0;
	}
}
