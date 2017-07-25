<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>
<c:import url="/WEB-INF/views/temp/1bootStrap.jsp"></c:import>
<style type="text/css">
.main_section {
	width: 1150px;
	height: 810px;
	background-color: yellow;
	margin: 0 auto;
}

</style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp" /> 
	<section class="main_section">
		<div>
			<div>
				<p>회원정보변경</p>
			</div>
			<div class="inpu">
     				<input type="text" class="form-control" id="id" name="id" value="${member.id }" disabled="disabled" style="width: 100%; height: 50px;">
   				</div>
			<div class="inpu">
				<input type="password" class="form-control" id="pw" name="pw" type="password" placeholder="비밀번호" style="width: 100%; height: 50px;">
			</div>
			
		</div>
	</section>
<c:import url="/WEB-INF/views/temp/footer.jsp" />
</body>
</html>