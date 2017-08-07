package com.fn.meeting;

import javax.servlet.http.HttpServletResponse;
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
import com.fn.member.client.ClientDTO;
import com.fn.member.client.ClientServiceImpl;


@Controller
@RequestMapping("/member/**")
public class ClientController {
	
	@Autowired 
	private ClientServiceImpl clientServiceImpl;
	
	@RequestMapping(value="memberJoin", method=RequestMethod.POST)
	public void memberJoin(String para, HttpSession session){		
		session.setAttribute("para", para);
	}
	
	@RequestMapping("memberLogin")
	public void memberLogin(HttpSession session, String nick) {
		if(nick != null) {
			session.invalidate();	//카카오로그아웃했을때 param session 초기화
		}		
	}
	
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
	public String joinClient(ClientDTO clientDTO, Model model, HttpSession session, MultipartFile f1) throws Exception {
		
		String oriName = f1.getOriginalFilename();
		clientDTO.setOriName(oriName);
		System.out.println(oriName);
		
		FileService f = new FileService();
		String fileName=f.fileSave(f1, session);
		
		clientDTO.setFileName(fileName);
		System.out.println(fileName);
		
		if(clientDTO.getKakaoimg() == null){
			clientDTO.setKakaoimg("");
		}
		
		int result = clientServiceImpl.memberJoin(clientDTO, session);
		
		String message = "가입 실패";
		if(result>0){
			message = "가입 성공";
		}
		
		model.addAttribute("fileName", fileName);
		model.addAttribute("oriName", oriName);
		model.addAttribute("message", message);
		model.addAttribute("path", "../");
		
		return "commons/result";
	}
	
	
	
	
	@RequestMapping(value = "/clientLogin", method=RequestMethod.POST)
	public ModelAndView loginClient(MemberDTO memberDTO, ModelAndView mv , HttpSession session) throws Exception {
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
		mv.setViewName("commons/result");
		
		return mv;
		
	}
	
<<<<<<< HEAD
	@RequestMapping(value = "/kakaoLogin", method={RequestMethod.POST, RequestMethod.GET})
	public ModelAndView kakaoLogin(MemberDTO memberDTO, ModelAndView mv, HttpSession session, String nick, String img, String id) throws Exception {
		memberDTO = clientServiceImpl.kakaoLogin(memberDTO);
		String path = "./memberLogin";
		String message="Login Fail";
		
		String para = nick+","+img+","+id;
		
		System.out.println("컨트롤러 nick : "+nick);
		System.out.println("컨트롤러 img : "+img);
		System.out.println("컨트롤러 아이디 : "+id);
=======
	@RequestMapping(value = "/clientReload", method=RequestMethod.GET)
	public String reload(MemberDTO memberDTO, HttpSession session, String bpath) throws Exception {
	
		memberDTO = clientServiceImpl.memberReload(memberDTO);
		System.out.println("id  나오지롱 "+memberDTO.getId());

		System.out.println("mgcheck 수정 결과"+memberDTO.getMgCheck());
>>>>>>> 0802_pjw
		
		
		if(memberDTO != null) {
			message = "Login Success";
			path = "../";
			mv.addObject("path", path);
			session.setAttribute("member", memberDTO);
			System.out.println(memberDTO.getId());
		}else {
			path = "./memberAgree";
			/*mv.addObject("path", path);
			mv.addObject("nick", nick);
			mv.addObject("img", img);
			mv.addObject("id", id);*/
			session.setAttribute("para", para);
		}
<<<<<<< HEAD
		System.out.println(para);
		mv.addObject("path", path);
		mv.addObject("message", message);
		mv.setViewName("commons/result");
		
		return mv;
=======

		
		return "commons/ajaxResult";
>>>>>>> 0802_pjw
		
	}
	
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public int idCheck(MemberDTO memberDTO) throws Exception {
		int result = 1;
		
		return 0;
	}
	
}
