<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div class="header_wrap">
		<div class="img_div">
			<img src="<%=application.getContextPath() %>/resources/images/logo1.png" class="logo">
		</div>
		<div class="header_name">
			<img src="<%=application.getContextPath() %>/resources/images/30.png" class="name">
		</div>

		<div id="login_box">
			<c:if test="${member eq null }">
				<a href="<%=application.getContextPath() %>/member/memberLogin" class="log_btn" role="button">로그인</a>
				<a href="<%=application.getContextPath() %>/message/ReadList?curPage=1&find=&search=sendId&recvId=asd">쪽지</a>
			</c:if>
			<c:if test="${member ne null }">
				<a href="<%=application.getContextPath() %>/member/memberLogout" class="log_btn" role="button">로그아웃</a>
			</c:if>
		</div>
	</div>
</header>