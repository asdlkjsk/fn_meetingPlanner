package com.fn.meeting;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.message.MessageDTO;
import com.fn.message.MessageService;
import com.fn.util.ListInfo;

@Controller
//@RequestMapping(value="/message/**")
public class MessageController {

	@Autowired
	private MessageService messageService;
	
	
	//list
<<<<<<< HEAD
	@RequestMapping(value="ReadList", method=RequestMethod.GET)
	public String megList(Model model, ListInfo listInfo) throws Exception {
		List<MessageDTO> list = messageService.megList(listInfo);
		model.addAttribute("list", list);
		model.addAttribute("listInfo", listInfo);
		model.addAttribute("board", "Read");
=======
	//@RequestMapping(value="megList", method=RequestMethod.GET)
	public void megList(ListInfo listInfo, Model model) throws Exception {
>>>>>>> 170717
		
		return "message/megList";
	}
	
	//view
	//@RequestMapping(value="megView", method=RequestMethod.GET)
	public void megView(Integer megNum, Model model) throws Exception {
		
	}
	
	//writeForm
	//@RequestMapping(value="megWrite", method=RequestMethod.GET)
	public void megWrite(Model model) throws Exception {
		
	}
	
	//write
	//@RequestMapping(value="megWrite", method=RequestMethod.POST)
	public void megWrite(MessageDTO MessageDTO, RedirectAttributes redirectAttributes) throws Exception {
		
	}
	
	//delete
	//@RequestMapping(value="megDelete", method=RequestMethod.GET)
	public void megDelete(Integer megNum, RedirectAttributes redirectAttributes) throws Exception {
		
	}	
}
