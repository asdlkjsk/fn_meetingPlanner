package com.fn.meeting;

import java.util.List;

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
@RequestMapping(value="/Message/**")
public class SendMessageController {
	
	@Autowired
	private SendMessageService sendMessageService;	
	
	//list
	@RequestMapping(value="sendList", method=RequestMethod.GET)
	public String sendList(ListInfo listInfo, Model model) throws Exception {
		List<SendMessageDTO> list = sendMessageService.sendList(listInfo);
		model.addAttribute("list", list);
		model.addAttribute("listInfo", listInfo);
		model.addAttribute("board", "Read");
		return "meg/megList";
	}
	
	//view
	@RequestMapping(value="sendView", method=RequestMethod.GET)
	public void sendView(Integer megNum, Model model) throws Exception {
		
	}
	
	//writeForm
	//@RequestMapping(value="sendWrite", method=RequestMethod.GET)
	public void sendWrite(Model model) throws Exception {
		
	}
	
	//write
	@RequestMapping(value="sendWrite", method=RequestMethod.POST)
	public void sendWrite(SendMessageDTO sendMessageDTO, RedirectAttributes redirectAttributes) throws Exception {
		
	}
	
	//delete
	//@RequestMapping(value="sendDelete", method=RequestMethod.GET)
	public void sendDelete(Integer megNum, RedirectAttributes redirectAttributes) throws Exception {
		
	}
	
}
