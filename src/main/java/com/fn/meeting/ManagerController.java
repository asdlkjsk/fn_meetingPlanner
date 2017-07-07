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
import com.fn.member.manager.ManagerDTO;
import com.fn.member.manager.ManagerServiceImpl;
import com.fn.util.ListInfo;


@Controller
@RequestMapping(value="/manager/**")
public class ManagerController {
	
	@Autowired
	//private 
	private ManagerServiceImpl managerServiceImpl;
	
	//list
	@RequestMapping(value="managerList", method=RequestMethod.GET)
	public String managerList(Model model, ListInfo listInfo) throws Exception{
		List<MemberDTO> ar = managerServiceImpl.memberList(listInfo);
				
		model.addAttribute("list", ar);
		model.addAttribute("listInfo", listInfo);
		model.addAttribute("member", "manager");
		return "Member/MemberList";
	}
	//view
	@RequestMapping(value="managerView", method=RequestMethod.GET)
	public String managerView(String id, Model model) throws Exception{
		MemberDTO memberDTO = managerServiceImpl.memberView(id);
		model.addAttribute("dto", memberDTO);
		model.addAttribute("member", "manager");
		
		return "Member/MemberView";
	}
	//writeForm
	@RequestMapping(value="managerWrite", method=RequestMethod.GET)
	public String managerWrite(Model model){
		model.addAttribute("path", "Write");
		return "Board/BoardWrite";
	}
	//write 처리
	@RequestMapping(value="managerWrite", method=RequestMethod.POST)
	public String managerJoin(MemberDTO memberDTO, RedirectAttributes redirectAttributes) throws Exception{
		int result = managerServiceImpl.memberJoin(memberDTO);
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";				
		}

		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:managerList?curPage=1";
		//if 문 처리
	}
	
	//update Form
	@RequestMapping(value="managerUpdate", method=RequestMethod.GET)
	public String managerUpdate(String id, Model model) throws Exception{
		MemberDTO managerDTO = new ManagerDTO();
		managerDTO = managerServiceImpl.memberView(id);
		model.addAttribute("path", "Update");
		model.addAttribute("dto", managerDTO);
		return "Member/MemberWrite";
	}
	
	//update 처리
	@RequestMapping(value="managerUpdate", method=RequestMethod.POST)
	public String managerUpdate(MemberDTO memberDTO, RedirectAttributes redirectAttributes) throws Exception{
		int result = managerServiceImpl.memberUpdate(memberDTO);
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";
		}
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:/manager/managerList?curPage=1";
		//if 문 처리
	}
	
	//delete 처리
	@RequestMapping(value="managerDelete", method=RequestMethod.GET)
	public String delete(String id, RedirectAttributes redirectAttributes) throws Exception{
		String message = "FAIL";
		int result = managerServiceImpl.memberDelete(id);
		if(result>0){
			message = "SUCCESS";
		}
		redirectAttributes.addFlashAttribute("message", message);
		
		return "redirect:/manager/managerList?curPage=1";
				
		
		
	}
	
}
