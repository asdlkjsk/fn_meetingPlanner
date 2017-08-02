package com.fn.meeting;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fn.member.MemberDTO;
import com.fn.member.client.ClientDTO;
import com.fn.member.client.ClientServiceImpl;


@Controller
@RequestMapping("/member/**")
public class ClientController {
	
	@Autowired 
	private ClientServiceImpl clientServiceImpl;
	
	@RequestMapping(value="memberJoin", method=RequestMethod.POST)
	public void memberJoin(){}
	
	@RequestMapping("memberLogin")
	public void memberLogin(){}
	
	@RequestMapping("memberLogout")
	public String memberLogout(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="myPage")
	public void myPage(){}
	
	@RequestMapping("memberAgree")
	public void memberAgree(){}
	
	@RequestMapping("groupList")
	public void groupList(){}
	
	
	/*******************************************************************/
	
	@RequestMapping(value="/clientJoin", method=RequestMethod.POST)
	public String joinClient(ClientDTO clientDTO, Model model, HttpSession session) throws Exception {
		int result = clientServiceImpl.memberJoin(clientDTO, session);
		String message = "가입 실패";
		if(result>0){
			message = "가입 성공";
		}
		model.addAttribute("message", message);
		model.addAttribute("path", "../");
		
		return "commons/result";
	}
	
	
	@RequestMapping(value = "/clientLogin", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView loginClient(MemberDTO memberDTO, ModelAndView mv, HttpSession session) throws Exception {
		memberDTO = clientServiceImpl.memberLogin(memberDTO);
		String path = "./memberLogin";
		String message="Login Fail";
		if(memberDTO != null) {
			message = "Login Success";
			path = "../";
			mv.addObject("path", path);
			session.setAttribute("member", memberDTO);
		}
		
		mv.addObject("path", path);
		mv.addObject("message", message);
		/*mv.addObject("mgCheck", mgCheck);*/
		mv.setViewName("commons/result");

		return mv;
		
	}
	
	@RequestMapping(value = "/clientReload", method={RequestMethod.POST, RequestMethod.GET})
/*	public String reload(MemberDTO memberDTO, RedirectAttributes redirectAttributes, HttpSession session, String bpath) throws Exception {*/
	public ModelAndView reload(MemberDTO memberDTO, ModelAndView mv , HttpSession session) throws Exception {
		memberDTO = clientServiceImpl.memberReload(memberDTO);
		
		
		//**/meeting 전까지

		/*String c = bpath.substring((session.getServletContext().getContextPath().length()+16));*/
		
		//이래도alert 무한루프
		//String c = ".."+bpath.substring((session.getServletContext().getContextPath().length()+16));

		//이러면 alert이 계속 나옴
		//String c = bpath.substring((session.getServletContext().getContextPath().length()+8));
		/*System.out.println(c);*/
		String message="Move Success";
		
		/*String path = "./memberLogin";
		String message="Login Fail";*/
		System.out.println("mgcheck 수정 결과"+memberDTO.getMgCheck());
		
		System.out.println("reload컨트롤러 온거얌");
		
		if(memberDTO != null) {

			session.setAttribute("member", memberDTO);
			
		}
		
		/*mv.addObject("path", "/meeting/message/ReadList?curPage=&find=&search=&recvId="+memberDTO.getId());*/
		mv.addObject("message", message);
		mv.setViewName("commons/result");
/*		redirectAttributes.addAttribute("path", c);
		redirectAttributes.addAttribute("message", message);*/
		
		return mv;
		/*return "redirect:/message/ReadList?curPage=&find=&search=&recvId="+memberDTO.getId();*/
		
	}
	
}
