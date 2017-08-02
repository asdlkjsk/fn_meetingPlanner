<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="org.apache.commons.httpclient.HttpClient" %>
<%@ page import="org.apache.commons.httpclient.methods.GetMethod" %>
<%@ page import="org.apache.commons.httpclient.HttpStatus" %>
<%
	request.setCharacterEncoding("utf-8");	
	String url = null;
	String stationName = request.getParameter("stationName");
	if(stationName != null){
		stationName = URLEncoder.encode(stationName, "UTF-8");
		url = "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getMsrstnAcctoRltmMesureDnsty";
		url += "?stationName="+stationName;
		url += "&dataTerm=month&pageNo=1&numOfRows=10";
		url += "&ServiceKey=iM9M1hAu2%2B1oPsCuLxmIBdYTlMT09RILXSt%2FnGIWpYysavoQ4nW0gZzjYP87%2FOGpmzrJdC8NQBfAXzdlKzmx1Q%3D%3D";
		url += "&ver=1.3&_returnType=json";
	}
	else
		url = request.getParameter("url");
	HttpClient client = new HttpClient();
	GetMethod method = new GetMethod(url);
	
	try{
	 int statusCode = client.executeMethod(method);
	 out.clearBuffer();
	 response.reset();
	 response.setStatus(statusCode);
	 if(statusCode == HttpStatus.SC_OK){
	  /* String result = method.getResponseBodyAsString(); */
	  InputStream is = method.getResponseBodyAsStream();
	  StringBuffer sb = new StringBuffer();
	  byte[] b = new byte[4096];
	  for (int n; (n = is.read(b)) != -1;) {
	      sb.append(new String(b, 0, n, "utf-8"));
	  }
	  String result = sb.toString();
	  response.setContentType("text/html; charset=utf-8");
	  out.println(result);
	  /* System.out.println(result); */
	 }
	}finally{
	 if(method != null) method.releaseConnection();
	}
%>