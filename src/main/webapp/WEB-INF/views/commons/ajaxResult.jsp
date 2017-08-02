<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<a href="<%=application.getContextPath() %>/member/myPage" >마이페이지</a>
<a href="<%=application.getContextPath() %>/member/groupList" >모임목록</a>
<a href="<%=application.getContextPath() %>/message/ReadList?curPage=1&find=&search=sendId&recvId=${member.id}&board=Read">쪽지 ${member.mgCheck }</a>
<a href="<%=application.getContextPath() %>/member/memberLogout" >로그아웃</a>