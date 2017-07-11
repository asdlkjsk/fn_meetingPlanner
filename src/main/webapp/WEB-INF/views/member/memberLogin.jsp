<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<style type="text/css">
.main_section {
	width: 1150px;
	height: 810px;
	background-color: yellow;
	margin: 0 auto;
}

#login_input {
	margin: auto;
	padding-top: 200px;
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp" /> 
	<section class="main_section">
		<div id="login_input">
			<div>
			ㅣ로그인ㅣ<br>
				<p>아이디 	 <input type="text"> </p>
				<p>비밀번호  <input type="password"> </p>
			</div>
		</div>
	</section>
<c:import url="/WEB-INF/views/temp/footer.jsp" />
</body>
</html>