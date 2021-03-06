<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/1bootStrap.jsp" />
<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/1reset.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/basic.css">
<link href="<%=application.getContextPath()%>/resources/css/icheck-bootstrap.css" rel="stylesheet"> --%>
<script type="text/javascript">
 	$(function() {

 		$("input[name=grade]").click(function(){
	        if($("#peterriver1").prop("checked")){       
	            $("input[id=peterriver1]").prop("checked",true);	         
	            $("input[id=peterriver2]").prop("checked",false);
	        }else if($("#peterriver2").prop("checked")) {
	        	$("input[id=peterriver1]").prop("checked",false);	         
	            $("input[id=peterriver2]").prop("checked",true);
	        }
		});
 		
		$("#btn").click(function() {
			var path = '';
			$(".lg").each(function() {
				if($(this).prop("checked")){
					path = $(this).val()+"Login";
				}
			});
			$("#frm_login").attr("action", path);
			$("#frm_login").submit();			
		});
	});
</script>
<style type="text/css">
.main_section {
	width: 1150px;
	height: 810px;
	margin: 0 auto;
}



#login_input {
	width: 400px;
	height: 565px;
	margin: auto;
	/* background: #44aadd; */
	padding-top: 70px;
	border-bottom: 1px solid #d5d5d5;
}

#hd {
	width: 250px;
	height: 80px;
	/* background: #95060a; */
	margin: auto;
	color: #44aaff;
	text-align: center;
	padding-top: 20px;
	font-size: 50px;
	font-weight: bold;
	margin-bottom: 70px;
}

#btn {
	width : 100%;
	height: 50px;
	background: #44aaff;
	text-align: center;
	padding-top: 8px;
	font-size: 30px;
	color: white;
	border-radius: 5px;
	margin-top: 30px;
	
}

#btn:hover {
	background: #0070cc;
}

.inpu {
	margin-bottom: -1px;
}

.form-control{
	border-radius: 0px !important;
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp" />
	<section class="main_section">
	<div id="login_input">
			<form id="frm_login" action="" method="post">
				<div id="hd">
					<h2 style="font-weight: bold;">LOGIN</h2>
				</div>
				<div class="inpu">
     				<input type="text" class="form-control" id="id" name="id" placeholder="아이디" style="width: 100%; height: 50px;" value="${member.id }">
   				</div>
				<div class="inpu">
					<input type="password" class="form-control" id="pw" name="pw" type="password" placeholder="비밀번호" style="width: 100%; height: 50px;">
				</div>
				
				<div class="radio icheck-peterriver" style="margin-top: 50px !important;">
					<input type="radio" id="peterriver1" name="grade" class="lg" value="client" checked="checked"/>
					<label for="peterriver1">일반회원</label>
				</div>
				<div class="radio icheck-peterriver" style="padding-top: 20px;">
					<input type="radio" id="peterriver2" name="grade" class="lg" value="manager" />
					<label for="peterriver2">매니저누구야?</label>
				</div>				
				<div id="btn" role="button">
					<p>로 그 인<p>
				</div>				
			</form>
			<br>
			</div>
			<div style="margin-left: 410px; margin-top: 30px; width: 400px;">
				<a href="memberAgree">회원가입　</a>│
				<a href="">　아이디 찾기　</a>│
				<a href="">　비밀번호 찾기</a>
			</div>
			<div>
				<form id="frm_ka" action="kakaoLogin" method="get">
					<button class="btn">카카오로그인</button>
				</form>
			</div>
	</section>
</body>
<script type="text/javascript">
	$(function() {
		$(".btn").click(function() {
			$("#frm_ka").submit();
		});
	});
</script>
</html>