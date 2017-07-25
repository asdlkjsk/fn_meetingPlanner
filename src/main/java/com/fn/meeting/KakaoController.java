package com.fn.meeting;

import org.springframework.lang.UsesSunHttpServer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@UsesSunHttpServer
@Controller
@RequestMapping("/member/**")
public class KakaoController {

	@RequestMapping("kakaoLogin")
	public void kakaoLogin(){}
	
	@RequestMapping("loginRe")
	public void kakaoPage(){}
	
}
