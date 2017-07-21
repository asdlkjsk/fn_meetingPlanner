package com.fn.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.util.ListInfo;

@Service
public class SendMessageService {
	
	@Autowired
	private SendMessageDAO sendMessageDAO;
	
	//list
	public List<SendMessageDTO> sendList(ListInfo listInfo) throws Exception {
		int count = sendMessageDAO.sendCount(listInfo);
		listInfo.makePage(count);
		listInfo.makeRow();
		return sendMessageDAO.megList(listInfo);
	}
	
	//view
	public SendMessageDTO sendView(int megNum) throws Exception {
		return sendMessageDAO.sendView(megNum);
	}
	
/*	//write
	public int sendWrite(SendMessageDTO sendMessageDTO) throws Exception {
		return 0;
	}
	*/
	//delete
	public int sendDelete(int megNum) throws Exception {
		return sendMessageDAO.sendDelete(megNum);
	}
}
