package com.fn.interceptor;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.fn.member.MemberDTO;


public class CommonInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
/*		System.out.println(request.getMethod());
		String bfurl = request.getHeader("referer");
		System.out.println("이전주소 : " + bfurl);
		StringBuffer nurl = request.getRequestURL();
		System.out.println("현재주소 : " + nurl);
		String nuri = request.getRequestURI();
		System.out.println("현재 uri : " + nuri);*/
		

		return super.preHandle(request, response, handler);
	}
}


		
/*	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		logger.info("===========================          START         ===========================");
		logger.info(" Request URI \t:  " + request.getRequestURI());

		Enumeration<String> paramNames = request.getParameterNames();
		while (paramNames.hasMoreElements()) {
			String key = paramNames.nextElement();
			String value = request.getParameter(key);
			logger.debug(" RequestParameter Data ==>  " + key + " : " + value + "");
		}

		System.out.println(request.getMethod());
		String bfurl = request.getHeader("referer");
		System.out.println("이전주소 : " + bfurl);
		StringBuffer nurl = request.getRequestURL();
		System.out.println("현재주소 : " + nurl);
		
		String move ="";
		
		if (!request.getRequestURI().equals("/meeting/member/clientReload")) {
			request.setAttribute("bpath", nurl);
			System.out.println("바로 겟한거다   " + request.getAttribute("bpath"));
		}

		if (request.getAttribute("bpath") != null) {
			request.setAttribute("npath", request.getAttribute("bpath"));
		}
			if (request.getSession().getAttribute("member") != null) {

				MemberDTO memberDTO = (MemberDTO) request.getSession().getAttribute("member");
				if (!request.getRequestURI().equals("/meeting/member/clientReload")) {
					move = "../member/clientReload?id=" + memberDTO.getId();

					System.out.println("move : " + move);

					response.sendRedirect(move + "&bpath=" + request.getAttribute("bpath"));

					return false;
				} else if (request.getRequestURI().equals("/meeting/member/clientReload")) {
					System.out.println("여기에 오면 이게 안돼야함");
				}

			}

		if (request.getSession().getAttribute("member") != null) {
			MemberDTO memberDTO = (MemberDTO) request.getSession().getAttribute("member");
			System.out.println("요기까지 오닝?");
			if(bfurl.equals("http://localhost/meeting/message/MegWrite?recvId=&mgCheck=1") && nurl.equals("http://localhost/meeting/message/ReadList")){
			if(bfurl.equals("http://localhost/meeting/message/ReadList?curPage=1&find=&search=sendId&recvId=qwe&board=Read")){
				System.out.println("여기는 못오는듯하고");
				String move = "/meeting/member/clientReload?id=" + memberDTO.getId();

				System.out.println("move : " + move);

				response.sendRedirect(move);

				return false;
			} else if(nurl.equals("http://localhost/meeting/member/clientReload")){
				System.out.println("무한루프 돌지망");
			}
		}
		
		 redirectView.setExposeModelAttributes(false); 

				String move = "";
		
		if (!request.getRequestURI().equals("/meeting/member/clientReload")) {
			request.setAttribute("bpath", nurl);
			System.out.println("바로 겟한거다   " + request.getAttribute("bpath"));
		}

		if (request.getAttribute("bpath") != null) {
			request.setAttribute("npath", request.getAttribute("bpath"));
		}
			if (request.getSession().getAttribute("member") != null) {

				MemberDTO memberDTO = (MemberDTO) request.getSession().getAttribute("member");
				if (!request.getRequestURI().equals("/meeting/member/clientReload")) {
					move = "../member/clientReload?id=" + memberDTO.getId();

					System.out.println("move : " + move);

					response.sendRedirect(move + "&bpath=" + request.getAttribute("bpath"));

					return false;
				} else if (request.getRequestURI().equals("/meeting/member/clientReload")) {
					System.out.println("여기에 오면 이게 안돼야함");
				}

			}



		return super.preHandle(request, response, handler);


	}*/


