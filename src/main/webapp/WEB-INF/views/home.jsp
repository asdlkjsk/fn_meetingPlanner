<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<style type="text/css">
.main_section {
	width: 1150px;
	height: 810px;
	background-color: yellow;
	margin: 0 auto;
}
</style>

<title>네이버 로그인</title>
</head>

<body>
<c:import url="/WEB-INF/views/temp/header.jsp" /> 
	<section class="main_section">
		<a href="javascript:;" onclick="window.open('weatherList', 'window', 'width=588, height=570');">Weather</a>
		<a href="calendar">Calendar</a>
		<a href="reservation">Reservation</a>
	</section>
<c:import url="/WEB-INF/views/temp/footer.jsp" />
</body>
</html>