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
import com.fn.message.SendMessageDTO;
import com.fn.message.SendMessageService;
import com.fn.util.ListInfo;

@Controller
@RequestMapping(value="/message/**")
public class SendMessageController {
	
	@Autowired
	private SendMessageService sendMessageService;	
	
	//list
	@RequestMapping(value="SendList", method=RequestMethod.GET)
	public String sendList(ListInfo listInfo, Model model) throws Exception {
		List<SendMessageDTO> list = sendMessageService.sendList(listInfo);
		model.addAttribute("list", list);
		model.addAttribute("listInfo", listInfo);
		model.addAttribute("board", "Send");
		return "message/megList";
	}
	
	//view
	@RequestMapping(value="SendView", method=RequestMethod.GET)
	public String sendView(Integer megNum, Model model) throws Exception {
		SendMessageDTO sendMessageDTO = sendMessageService.sendView(megNum);
		model.addAttribute("meg", sendMessageDTO);
		model.addAttribute("board", "Send");
		
		return "message/megView";
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
	@RequestMapping(value="SendDelete", method=RequestMethod.GET)
	public String megDelete(Integer megNum, RedirectAttributes redirectAttributes, HttpSession session) throws Exception {
		int result = sendMessageService.sendDelete(megNum);
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		/*System.out.println("getid : "+memberDTO.getId());*/
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";			
		}
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:SendList?curPage=&find=&search=&sendId="+memberDTO.getId();
	}
	
	//MegListDelete
	@RequestMapping(value="SendListDelete", method=RequestMethod.GET)
	public String megListDelete(Integer[] chk, RedirectAttributes redirectAttributes, HttpSession session) throws Exception {
		System.out.println("control");
		/*System.out.println(board);*/
		int result = 0;
		for(int i =0;i<chk.length;i++){
			/*System.out.println(chk[i]);*/
			result = sendMessageService.sendDelete(chk[i]);
		}
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		System.out.println("getid : "+memberDTO.getId());
		String message = "FAIL";
		if(result>0){
			message = "SUCCESS";			
		}

		/*System.out.println(path);*/
		
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:SendList?curPage=&find=&search=&sendId="+memberDTO.getId();
	}	
	
}
