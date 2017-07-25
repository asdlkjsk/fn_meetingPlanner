<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/1bootStrap.jsp"></c:import>
<style type="text/css">
body {
	overflow-y: scroll !important;
}
.main_section {
	width: 1150px;
	height: 910px;
	/* background-color: yellow; */
	margin: 0 auto;
}
#main_box {
	width: 450px;
	height: 870px;
	/* background: aqua; */
	margin: auto;
	padding-top: 35px;
	margin-top: 40px;
	border: 2px solid #44aaff;
    border-radius: 10px;
}
#frm_join {
	width: 400px;
    height: 740px;
    margin: auto;
    /* background: green; */
}

h2 {
	text-align: center;
	font-weight: bold;
	margin-bottom: 15px;
	font-size: 35px;
	color: #44aaff;
}
.ip {
	width: 100%;
	height: 50px;
	margin-bottom: -1px;
}

#btn {
	width: 100%;
	height: 40px;
	text-align: center;
	padding-top: 15px;
	color: white;
	background: #44aaff; 
	margin-top: 90px;
	border-radius: 5px;
}
#btn:hover {
	background: #0070cc;
}

input {
	width: 100%;
	height: 100%;
	font-size: 14px;
}

.radio {
	width: 100px !important;
	margin-left: 60px !important;
	display: inline-block !important;
	padding-top: 9px !important;
	
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp" />
	<section class="main_section">	
		<div id="main_box">
		<h2>회원가입</h2>
			<form id="frm_join" name="frm" action="" method="post" enctype="multipart/form-data">
			<input type="hidden" value="${param.grade}" name="grade">
				<div class="ip">
					<input type="text" name="id" placeholder="아이디" >
				</div>
				<div class="ip" style="margin-bottom: 10px;">					
					<input type="password" name="pw" placeholder="비밀번호" >
				</div>
				<div class="ip">	
					<input type="text" name="name" placeholder="이름" >
				</div>
				<div class="ip">
					<input type="number" name="age" placeholder="나이" >
				</div>
				<div class="ip" style="background: white; border: 1px solid #a9a9a9;">
					<div style="width: 50px; height: 30px; display: inline-block; color: #757575; font-size: 14px;">
						<span>성 별</span>
					</div>
					<div class="radio icheck-peterriver" >
					<input type="radio" id="peterriver1" name="gender" class="lg" value="m" />
					<label for="peterriver1">남자</label>
				</div>
				<div class="radio icheck-peterriver" >
					<input type="radio" id="peterriver2" name="gender" class="lg" value="w" />
					<label for="peterriver2">여자</label>
				</div>
				</div>
				<div class="ip">
					<input type="email" name="email" placeholder="이메일" >
				</div>
				<div class="ip">
					<input type="text" name="phone" placeholder="전화번호" >
				</div>
				<div class="ip" style="background: white; border: 1px solid #a9a9a9; margin-bottom: 10px;">
					<div style="width: 70px; height:43px; display: inline-block; color: #757575; font-size: 14px; padding-top: 18px;">
						<p>프로필사진</p>
					</div>
					<div style="width: 180px; height:24px; display: inline-block; margin-left: 120px;">
						<input type="file" name="f1" >
					</div>
				</div>
				<div id="mana_form" style="visibility: hidden; width: 400px; height: 200px;">
					<c:if test="${param.grade eq 'manager' }">
						<div class="ip">
							<input type="text" name="storeName" id="sn" placeholder="업체명" >
						</div>
						<div class="ip">
							<input type="text" name="storePhone" placeholder="업체전화번호" >
						</div>
						<div class="ip">
							<input type="text" name="storePlace" placeholder="업체주소" >
						</div>
						<div class="ip">
							<input type="text" name="storeNum" placeholder="사업자번호" >
						</div>
					</c:if>
				</div>
				<div id="btn" role="button">
					<p>가입하기</p>
				</div>
				
			</form>
		</div>		
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
		
		var ma = $("#mana_form");
		var st = "visibility:visible; width: 400px; height: 200px;";
			if(${param.grade == 'manager'}) {
				ma.attr("style", st);
			}
	});
	
</script>
</body>
</html>