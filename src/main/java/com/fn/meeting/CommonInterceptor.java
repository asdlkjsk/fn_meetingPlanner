package com.fn.meeting;


import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.fn.member.MemberDTO;

public class CommonInterceptor extends HandlerInterceptorAdapter {

	  protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	   
	  @Override
	  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	      throws Exception {
	 
	    logger.info("===========================          START         ===========================");
	    logger.info(" Request URI \t:  " + request.getRequestURI());

	    Enumeration<String> paramNames = request.getParameterNames();
	    while (paramNames.hasMoreElements()) {
	      String key = paramNames.nextElement();
	      String value = request.getParameter(key);
	      logger.debug(" RequestParameter Data ==>  " + key + " : " + value + "");
	    }
	    
	    
	    	

	       
	    return super.preHandle(request, response, handler);
	 
	  }
	 
	  @Override
	  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
	      ModelAndView modelAndView) throws Exception {
		  
		  	System.out.println(request.getMethod());
		    String bfurl = request.getHeader("referer");
		    System.out.println("이전주소 : "+bfurl);
		    StringBuffer nurl = request.getRequestURL();
		    String nowUrl = nurl.toString();
		    System.out.println("현재주소 : "+nurl);
		    RedirectView redirectView = new RedirectView(); // redirect url 설정
		    redirectView.setExposeModelAttributes(false);
		  
		  if(request.getSession().getAttribute("member") != null){
		    MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
				System.out.println("member세션 확인 : "+memberDTO.getId());
				if (bfurl != nowUrl) {
					String path = "../member/clientLogin?id="+memberDTO.getId()+"&pw="+memberDTO.getPw();
					/*String path = "../member/clientLogin";*/
					System.out.println(path);
			
					/*redirectView.setUrl(path);
					modelAndView.setView(redirectView);*/

				}
			
		    } else{
		    	System.out.println("session null");
		    }
		  
	    logger.info("===========================          END           ===========================");
	   
	  }

}
