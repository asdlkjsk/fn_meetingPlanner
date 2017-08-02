package com.fn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LogingCheckInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		try {
			if (request.getSession().getAttribute("member") == null) {
				response.sendRedirect("/meeting");
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return super.preHandle(request, response, handler);
	}

}
