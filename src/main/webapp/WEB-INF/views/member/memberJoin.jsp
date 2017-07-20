<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/bootStrap.jsp" />
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
		<form id="frm_join" name="frm" action="" method="post" enctype="multipart/form-data">
		<input type="hidden" value="${param.grade}" name="grade">
			<c:if test="${param.grade eq 'client' }">
				<p>아이디<input type="text" name="id"></p>
				<p>비밀번호<input type="password" name="pw"></p>
				<p>이름<input type="text" name="name"></p>
				<p>나이<input type="number" name="age"></p>
				<p>성별<input type="radio" name="gender" value="m" checked="checked">남<input type="radio" name="gender" value="w">여</p>
				<p>이메일<input type="email" name="email"></p>
				<p>폰<input type="text" name="phone"></p>
				<p>프로필사진<input type="file" name="f1"></p>
				<!-- <input type="hidden" name="fileName"> -->
			</c:if>
			<c:if test="${param.grade eq 'manager' }">
				<p>아이디<input type="text" name="id"></p>
				<p>비밀번호<input type="password" name="pw"></p>
				<p>이름<input type="text" name="name"></p>
				<p>나이<input type="number" name="age"></p>
				<p>성별<input type="radio" name="gender" value="m" checked="checked">남<input type="radio" name="gender" value="w">여</p>
				<p>이메일<input type="email" name="email"></p>
				<p>폰<input type="text" name="phone"></p>
				<p>프로필사진<input type="file" name="f1"></p>
				<!-- <input type="hidden" name="fileName"> -->
				<p>업체명<input type="text" name="storeName" id="sn"></p>
				<p>업체전화번호<input type="text" name="storePhone"></p>
				<p>업체주소<input type="text" name="storePlace"></p>
				<p>사업자번호<input type="text" name="storeNum"></p>
			</c:if>
			<input type="button" id="btn" value="회원가입">
		</form>		
		
	</section>
<c:import url="/WEB-INF/views/temp/footer.jsp" />
<script type="text/javascript">
	$(function() {
		$("#btn").click(function() {
			var path='';
			path = '${param.grade}'+"Join";
			$("#frm_join").attr("action", path);
			document.frm.submit();
		});
		
	});
</script>
</body>
</html>