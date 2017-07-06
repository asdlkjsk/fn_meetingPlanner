package com.fn.meeting;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.member.MemberDTO;
import com.fn.member.client.ClientDTO;
import com.fn.member.client.ClientServiceImpl;
import com.fn.util.ListInfo;


@Controller
@RequestMapping(value="/client/**")
public class ClientController {
	
	@Autowired
	//private 
	private ClientServiceImpl clientServiceImpl;
	
	//list
	@RequestMapping(value="clientList", method=RequestMethod.GET)
	public String clientList(Model model, ListInfo listInfo) throws Exception{
		List<MemberDTO> ar = clientServiceImpl.memberList(listInfo);
				
		model.addAttribute("list", ar);
		model.addAttribute("listInfo", listInfo);
		model.addAttribute("member", "client");
		return "Member/MemberList";
	}
	//view
	@RequestMapping(value="clientView", method=RequestMethod.GET)
	public String clientView(String id, Model model) throws Exception{
		MemberDTO memberDTO = clientServiceImpl.memberView(id);
		model.addAttribute("dto", memberDTO);
		model.addAttribute("member", "client");
		
		return "Member/MemberView";
	}
	//writeForm
	@RequestMapping(value="clientWrite", method=RequestMethod.GET)
	public String clientWrite(Model model){
		model.addAttribute("path", "Write");
		return "Board/BoardWrite";
	}
	//write 처리
	@RequestMapping(value="clientWrite", method=RequestMethod.POST)
	public String clientJoin(MemberDTO memberDTO, RedirectAttributes redirectAttributes) throws Exception{
		int result = clientServiceImpl.memberJoin(memberDTO);
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";				
		}

		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:clientList?curPage=1";
		//if 문 처리
	}
	
	//update Form
	@RequestMapping(value="clientUpdate", method=RequestMethod.GET)
	public String clientUpdate(String id, Model model) throws Exception{
		MemberDTO clientDTO = new ClientDTO();
		clientDTO = clientServiceImpl.memberView(id);
		model.addAttribute("path", "Update");
		model.addAttribute("dto", clientDTO);
		return "Board/BoardWrite";
	}
	
	//update 처리
	@RequestMapping(value="clientUpdate", method=RequestMethod.POST)
	public String clientUpdate(MemberDTO memberDTO, RedirectAttributes redirectAttributes) throws Exception{
		int result = clientServiceImpl.memberUpdate(memberDTO);
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";
		}
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:/client/clientList?curPage=1";
		//if 문 처리
	}
	
	//delete 처리
	@RequestMapping(value="clientDelete", method=RequestMethod.GET)
	public String delete(String id, RedirectAttributes redirectAttributes) throws Exception{
		String message = "FAIL";
		int result = clientServiceImpl.memberDelete(id);
		if(result>0){
			message = "SUCCESS";
		}
		redirectAttributes.addFlashAttribute("message", message);
		
		return "redirect:/client/clientList?curPage=1";
				
		
		
	}
	
}
