package com.fn.message;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fn.util.ListInfo;

@Service
public class MessageService {
	
	@Autowired
	private MessageDAO messageDAO;
	
	//list
	public List<MessageDTO> megList(ListInfo listInfo) throws Exception {
		int count = messageDAO.megCount(listInfo);
		listInfo.makePage(count);
		listInfo.makeRow();
		return messageDAO.megList(listInfo);
	}
	
	//view
	public MessageDTO megView(int megNum) throws Exception {
		return messageDAO.megView(megNum);
	}
	
	//write
	public int megWrite(MessageDTO MessageDTO) throws Exception {
		/*System.out.println("Service");*/
				
		return messageDAO.megWrite(MessageDTO);
	}
	
	//delete
	public int megDelete(int megNum) throws Exception {
		return messageDAO.megDelete(megNum);
	}
	
}
