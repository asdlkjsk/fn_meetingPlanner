package com.fn.meeting;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.member.MemberDTO;
import com.fn.message.MessageDTO;
import com.fn.message.MessageService;
import com.fn.util.ListInfo;

@Controller
@RequestMapping(value="/message/**")
public class MessageController {

	@Autowired
	private MessageService messageService;
	
	
	//list
	@RequestMapping(value="/ReadList", method=RequestMethod.GET)
	public String megList(Model model, ListInfo listInfo) throws Exception {
		List<MessageDTO> list = messageService.megList(listInfo);
		model.addAttribute("list", list);
		model.addAttribute("listInfo", listInfo);
		model.addAttribute("board", "Read");
		
		return "message/megList";
	}
	
	//view
	@RequestMapping(value="/ReadView", method=RequestMethod.GET)
	public String megView(Integer megNum, Model model) throws Exception {
		MessageDTO messageDTO = messageService.megView(megNum);
		model.addAttribute("meg", messageDTO);
		model.addAttribute("board", "Read");
		
		return "message/megView";
	}
	
	//writeForm
	@RequestMapping(value="MegWrite", method=RequestMethod.GET)
	public String megWrite(Model model, String recvId) throws Exception {
		model.addAttribute("path", "Read");
		model.addAttribute("recvId", recvId);
		return "message/megWrite";
	}
	
	//write
	@RequestMapping(value="MegWrite", method=RequestMethod.POST)
	public String megWrite(MessageDTO MessageDTO, RedirectAttributes redirectAttributes) throws Exception {
		System.out.println("Controller");
		int result = messageService.megWrite(MessageDTO);
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";			
		}
		
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:ReadList?curPage=1&find=&search=sendId&recvId="+MessageDTO.getSendId();
	}
	
	//delete
	@RequestMapping(value="MegDelete", method=RequestMethod.GET)
	public String megDelete(Integer megNum, RedirectAttributes redirectAttributes, HttpSession session) throws Exception {
		int result = messageService.megDelete(megNum);
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		/*System.out.println("getid : "+memberDTO.getId());*/
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";			
		}
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:ReadList?curPage=&find=&search=&recvId="+memberDTO.getId();
	}	
}
