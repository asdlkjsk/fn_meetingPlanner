<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="org.apache.commons.httpclient.HttpClient" %>
<%@ page import="org.apache.commons.httpclient.methods.GetMethod" %>
<%@ page import="org.apache.commons.httpclient.HttpStatus" %>
<%
 request.setCharacterEncoding("utf-8");

 String url = request.getParameter("url");
 HttpClient client = new HttpClient();
 GetMethod method = new GetMethod(url);
 
 try{
  int statusCode = client.executeMethod(method);
  out.clearBuffer();
  response.reset();
  response.setStatus(statusCode);
  if(statusCode == HttpStatus.SC_OK){
   String result = method.getResponseBodyAsString();
   response.setContentType("text/xml; charset=utf-8");
   out.println(result);
  }
 }finally{
  if(method != null) method.releaseConnection();
 }
%>