<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<script type="text/javascript">
 	$(function() {
 		$("input[name=grade]").click(function(){
	        if($("#primary1").prop("checked")){       
	            $("input[id=primary1]").prop("checked",true);	         
	            $("input[id=primary2]").prop("checked",false);
	        }else if($("#primary2").prop("checked")) {
	        	$("input[id=primary1]").prop("checked",false);	         
	            $("input[id=primary2]").prop("checked",true);
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
	width: 550px;
	height: 300px;
	margin: auto;
	/* background: #44aadd; */
	padding-top: 70px;
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
	padding-top: 10px;
	font-size: 30px;
	margin-top: 70px;
	color: white;
	
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp" />
	<section class="main_section">
		<div id="login_input">
			<form id="frm_login" action="memberLogin" method="post">				
					<div id="hd">
						<h2>LOGIN</h2>
					</div>					
					<div class="form-group">
      					<input type="text" class="form-control" id="id" name="id" placeholder="아이디" style="width: 100%; height: 40px;">
    				</div>
					<div class="form-group">
						<input type="password" class="form-control" id="pw" name="pw" type="password" placeholder="비밀번호" style="width: 100%; height: 40px;">
					</div>	
					<div class="radio icheck-primary">
						<input type="radio" id="primary1" name="grade" class="lg" value="client" checked="checked"/>
						<label for="primary1">일반회원</label>
					</div>
					<div class="radio icheck-primary">
						<input type="radio" id="primary2" name="grade" class="lg" value="manager" />
						<label for="primary2">매니저누구야?</label>
					</div>  
					
					<div id="btn" role="button">
						<p>로 그 인<p>
					</div>
			</form>
			<br>
			<p><a href="memberAgree">회원가입</a></p>
		</div>		
	</section>
</body>
</html>