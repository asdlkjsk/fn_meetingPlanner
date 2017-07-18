package com.fn.meeting;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SocketController {
	
	@RequestMapping(value="/chat", method=RequestMethod.GET)
	public String viewChattingPage(){
		return "chatting/chat";
	}
	
	@RequestMapping(value="/chat2", method=RequestMethod.GET)
	public String viewChattingPage2(){
		return "chatting/chat2";
	}
}
