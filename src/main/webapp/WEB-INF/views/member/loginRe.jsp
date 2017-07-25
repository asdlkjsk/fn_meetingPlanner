<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<c:out value="${param.name }"></c:out>
	<!-- <input type="button" value="로그아웃" id="logout"> -->
	<input type="button" value="로그아웃" id="btnLogout">
<script type="text/javascript">

	$(function() {
		
	
	$("#btnLogout").on("click", function(){
	  Kakao.Auth.logout(function(result){
	   if(result == true){
	    alert("로그아웃성공");
	    
	   }else{
	    alert("로그아웃시도중 오류발생!!");
	   }
	  });
	 });

	});
/* Kakao.Auth.logout(function(result){
	   if(result == true){
	    alert("로그아웃성공");
	    
	   }else{
	    alert("로그아웃시도중 오류발생!!");
	   }
	  }); */
/* 	Kakao.Auth.logout({
		container:'logout',
		callback: function(res) {
			url:'v1/user/logout',
			location.href="./kakaoLogin";
		}
	});	
	
	 $("#btnLogout").on("click", function(){
		  Kakao.Auth.logout(function(result){
		   if(result == true){
		    alert("로그아웃성공");
		    
		   }else{
		    alert("로그아웃시도중 오류발생!!");
		   }
		  });
		 });
 */
</script>
</body>
</html>