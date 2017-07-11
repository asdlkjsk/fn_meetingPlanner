<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="<c:url value='resources/css/reset.css'/>">
<meta charset="utf-8">
<style type="text/css">
body {
	height: 100%;
	overflow: hidden;
	/* background-color: white; */
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
	/* background-color: yellow; */
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
	display: inline-block;
	text-align: left;
}

.main_search {
	width: 100%;
	height: 100px;
}

.main_kind {
	width: 100%;
	height: 560px;
	/* background-color: fuchsia; */
}

.main_text_div {
	width: 62%;
	height: 88%;
	display: inline-block;
	float: left;
	text-align: center;
	margin-top: 17px;
}

.main_search_div {
	width: 35%;
	height: 65%;
	display: inline-block;
	text-align: center;
	margin-top: 55px;
	float: left;
}

#search {
	width: 62%;
	height: 36%;
	float: left;
}

#btn_search {
	width: 25%;
	height: 36%;
	text-align: center;
	cursor: pointer;
	outline: none;
	color: #fff;
	background-color: #44aaff;
	border: none;
	float: left;
}

#crate_btn {
	width: 100%;
	height: 100%;
	font-size: 24px;
	text-align: center;
	cursor: pointer;
	outline: none;
	color: #fff;
	background-color: #44aaff;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #999;
	font-size: 24px;
}

#crate_btn:hover {
	background-color: #5844ff
}

#crate_btn:active {
	background-color: #44aaff;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

h2 {
	font-size: 23px;
	font-family: "나눔고딕";
}

.list {
	position: relative;
	width: 317px;
	height: 200px;
	border: 1px solid black;
	display: inline-block;
	margin: 30px;
	float: left;
}
.image {
	display: block;
	width: 100%;
	height: auto;
}

.overlay {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 100%;
	width: 100%;
	opacity: 0;
	transition: .5s ease;
	background-color: #008CBA;
	opacity: 0.5;
	display: inline-block;
}

.text {
	color: white;
	font-size: 20px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
}

.list_2 {
	display: none;
}
.w3-content{
	height: 100%;
	width: 100%;
}
.w3-display-container{
	height: 100%;
	width: 100%;
}

</style>
<script type="text/javascript">
	$(function() {
		$('.bxslider').bxSlider({
			  auto: true,
			  autoControls: true
			});
	});
</script>


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
	<!-- Text -->
		<div class="main_text">
			<div class="main_text_div">
				<h2>A dream written down with a date becomes a goal.</h2>
				<h2>A goal broken down becomes a plan.</h2>
				<h2>A plan backed by action makes your dream come true.</h2>
				<br>
				<h2>- GREG S. REID -</h2>
			</div>
			<div class="main_search_div">
				<input type="text" id="search" name="search" placeholder="모임 이름을 입력하세요.">
				<input type="button" id="btn_search" name="btn_search" value="SEARCH">
			</div>
		</div>
		
		<!-- 카테고리 list -->
		<div class="main_kind">
			<div class="main_kind_div">
			
			<ul class="bxslider">
				<li>
				<div class="list" >
					<a href="#"><img src="resources/images/sports.jpg" style="width:100%; height:100%; overflow: hidden; z-index: 0;"></a>
					<div class="overlat"><span class="text">스포츠/레저</span></div>
					</div>
				</li>
				<li>
				<div class="list" >
					<a href="#"><img src="resources/images/sports.jpg" style="width:100%; height:100%; overflow: hidden; z-index: 0;"></a>
					<div class="overlat"><span class="text">스포츠/레저</span></div>
					</div>					
				</li>
				<li>
				<div class="list" >
					<a href="#"><img src="resources/images/sports.jpg" style="width:100%; height:100%; overflow: hidden; z-index: 0;"></a>
					<div class="overlat"><span class="text">스포츠/레저</span></div>
					</div>					
				</li>
								<li>
				<div class="list" >
					<a href="#"><img src="resources/images/sports.jpg" style="width:100%; height:100%; overflow: hidden; z-index: 0;"></a>
					<div class="overlat"><span class="text">스포츠/레저</span></div>
					</div>					
				</li>
								<li>
				<div class="list" >
					<a href="#"><img src="resources/images/sports.jpg" style="width:100%; height:100%; overflow: hidden; z-index: 0;"></a>
					<div class="overlat"><span class="text">스포츠/레저</span></div>
					</div>					
				</li>
								<li>
				<div class="list" >
					<a href="#"><img src="resources/images/sports.jpg" style="width:100%; height:100%; overflow: hidden; z-index: 0;"></a>
					<div class="overlat"><span class="text">스포츠/레저</span></div>
					</div>					
				</li>
			
			</ul>

				</div>
		</div>

		<!-- Search -->
		<div class="main_search">
			<button id="crate_btn">CRATE</button>
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