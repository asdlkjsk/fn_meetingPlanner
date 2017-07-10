<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='resources/css/reset.css'/>">
<meta charset="utf-8">
<style type="text/css">
body {
	height: 100%;
	overflow: hidden;
}

header {
	width: 100%;
	height: 70px;
	display: inline-block;
	margin: 0 auto;
}

.main_section {
	width: 1150px;
	height: 810px;
	background-color: yellow;
	margin: 0 auto;
}

.footer {
	width: 100%;
	height: 70px;
	background-color: gray;
	margin: 0 auto;
}

.header_wrap {
	width: 1150px;
	height: 70px;
	margin: 0 auto;
}

.footer_wrap {
	width: 1150px;
	height: 70px;
	margin: 0 auto;
}

.img_div {
	width: 50px;
	height: 50px;
	margin: auto 0;
	padding-top: 10px;
	display: inline-block;
}

.logo {
	width: 50px;
	height: 50px;
}

.header_name {
	width: 300px;
	display: inline-block;
}

/* main 시작!! */
.main_text {
	width: 100%;
	height: 150px;
	background-color: lime;
}

.main_search {
	width: 100%;
	height: 100px;
	background-color: blue;
}

.main_kind {
	width: 100%;
	height: 560px;
	background-color: fuchsia;
}

#search {
	width: 300px;
	height: 30px;
}

#btn_search {
	width: 100px;
	height: 30px;
}

.main_search_div {
	text-align: right;
	padding-top: 33px;
}

h2 {
	font-size: 25px;
	font-family: "나눔고딕";
}
</style>


<title>네이버 로그인</title>
</head>

<body>
	<header>

		<div class="header_wrap">
			<div class="img_div">
				<img src="resources/images/logo1.png" class="logo">
			</div>
			<div class="header_name">
				<img src="resources/images/30.png" class="name">
			</div>
			<div class="header_menu"></div>
		</div>

	</header>


	<section class="main_section">
		<div class="main_text">
			<!-- <div style="width:410px; height:70px; margin: auto; padding-top: 40px"> -->
			<div style="width: 750px; margin: auto; padding-top: 17px;">
				<h2>A dream written down with a date becomes a goal.</h2>
				<h2>A goal broken down becomes a plan.</h2>
				<h2>A plan backed by action makes your dream come true.</h2>
				<br>
				<h2>- GREG S. REID -</h2>
			</div>
		</div>

		<div class="main_kind">
			<div class="main_kind_div">
				
			</div>
		</div>

		<div class="main_search">
			<div class="main_search_div">
				<input type="text" id="search" name="search"
					placeholder="모임 이름을 입력하세요."> <input type="button"
					id="btn_search" name="btn_search" value="SEARCH">
			</div>
		</div>





	</section>

	<footer>
		<div class="footer_wrap">
			<div class="img_div">
				<img src="resources/images/logo1.png" class="logo">
			</div>
		</div>
	</footer>



</body>
</html>