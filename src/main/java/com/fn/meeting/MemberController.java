package com.fn.meeting;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/member/**")
public class MemberController {
	
	//loginPage
	@RequestMapping(value="memberLogin", method=RequestMethod.GET)
	public String loginPage() {		
		return "member/memberLogin";
	}
	
	//
}
