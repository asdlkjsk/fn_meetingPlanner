package com.fn.meeting;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fn.file.FileService;
import com.fn.member.MemberDTO;
import com.fn.member.manager.ManagerDTO;
import com.fn.member.manager.ManagerServiceImpl;

@Controller
@RequestMapping("/member/**")
public class ManagerController {
	
	@Autowired 
	private ManagerServiceImpl managerServiceImpl;
	
	@RequestMapping(value="/managerJoin", method=RequestMethod.POST)
	public String joinManager(ManagerDTO managerDTO, Model model, HttpSession session, MultipartFile f1) throws Exception {
		String oriName = f1.getOriginalFilename();
		managerDTO.setOriName(oriName);
		
		FileService f = new FileService();
		String fileName = f.fileSave(f1, session);
		managerDTO.setFileName(fileName);
		
		int result = managerServiceImpl.memberJoin(managerDTO, session);
		
		String message = "가입 실패";
		if(result>0){
			message = "가입 성공";
		}
		
		model.addAttribute("fileName", fileName);
		model.addAttribute("oriName", f1.getOriginalFilename());
		model.addAttribute("message", message);
		model.addAttribute("path", "../");
		
		return "commons/result";
	}
	
	@RequestMapping(value="/managerLogin", method=RequestMethod.POST)
	public ModelAndView loginManager(MemberDTO memberDTO, ModelAndView mv, HttpSession session) throws Exception {
		memberDTO = managerServiceImpl.memberLogin(memberDTO);
		
		String message="Login Fail";
		String path = "./memberLogin";
		if(memberDTO != null) {
			message = "Login Success";
			path = "../";
			mv.addObject("path", path);
			session.setAttribute("member", memberDTO);
		}
		
		mv.addObject("path", path);
		mv.addObject("message", message);
		mv.setViewName("commons/result");
		
		return mv;
	}
}
