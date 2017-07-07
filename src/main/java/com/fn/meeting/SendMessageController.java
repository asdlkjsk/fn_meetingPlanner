package com.fn.meeting;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.message.SendMessageDTO;
import com.fn.message.SendMessageService;
import com.fn.util.ListInfo;

@Controller
//@RequestMapping(value="/SendMessage/**")
public class SendMessageController {
	
	@Autowired
	private SendMessageService sendMessageService;	
	
	//list
	//@RequestMapping(value="sendList", method=RequestMethod.GET)
	public void sendList(ListInfo listInfo, Model model) throws Exception {
		
	}
	
	//view
	//@RequestMapping(value="sendView", method=RequestMethod.GET)
	public void sendView(Integer megNum, Model model) throws Exception {
		
	}
	
	//writeForm
	//@RequestMapping(value="sendWrite", method=RequestMethod.GET)
	public void sendWrite(Model model) throws Exception {
		
	}
	
	//write
	//@RequestMapping(value="sendWrite", method=RequestMethod.POST)
	public void sendWrite(SendMessageDTO sendMessageDTO, RedirectAttributes redirectAttributes) throws Exception {
		
	}
	
	//delete
	//@RequestMapping(value="sendDelete", method=RequestMethod.GET)
	public void sendDelete(Integer megNum, RedirectAttributes redirectAttributes) throws Exception {
		
	}
	
}
