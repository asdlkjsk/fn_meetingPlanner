<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
=======
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<meta charset="utf-8">
>>>>>>> 7c14ff3f4e58168fce19891e0f0f63fa12b548a9
<style type="text/css">
body {
	height: 100%;
	overflow: hidden;
}

.main_section {
	width: 1150px;
	height: 810px;
	margin: 0 auto;
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
	float: right;
}

#search {
	width: 62%;
	height: 36%;
	float: right;
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
	float: right;
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
	margin: 0;
}

.list {
	position: relative;
	width: 317px;
	height: 192px;
	border: 1px solid white;
	display: inline-block;
	margin-bottom : 20px;
	margin-left : 35px;
	margin-top:30px;
	margin-right:30px;
	float: left;
	overflow: hidden;
	border-radius: 5%;
}

.image {
	display: block;
	width: 100%;
	height: auto;
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  overflow: hidden;
  width: 100%;
  height:100%;
  transition: .5s ease;
  background-color: rgba(0,0,0,0.5);
  border-radius: 5%;
}

.text {
 	color: white;
	font-size: 20px;
	position: absolute;
	width:100%;
	height : 100%;
	text-align: center;
	font-weight: bold;
}
.move{
    display: table-cell;
    height: 190px;
    width: 315px;
    color: white;
    vertical-align: middle;
}

/* slideSHOW */
* {
	box-sizing: border-box
}

body {
	font-family: Verdana, sans-serif;
}

.mySlides {
	display: none
}

/* Slideshow container */
.slideshow-container {
	max-width: 1150px;
	height: 540px;
	position: relative;
	margin: auto;
}

/* Number text (1/3 etc) */
.numbertext {
	color: #f2f2f2;
	font-size: 12px;
	padding: 8px 12px;
	position: absolute;
	top: 0;
}

/* The dots/bullets/indicators */
.dot {
	height: 13px;
	width: 13px;
	margin: 0 2px;
	background-color: #bbb;
	border-radius: 50%;
	display: inline-block;
	transition: background-color 0.6s ease;
}

.active {
	background-color: #717171;
}

/* Fading animation */
.fade {
	-webkit-animation-name: fade;
	-webkit-animation-duration: 1.5s;
	animation-name: fade;
	animation-duration: 1.5s;
}

@
-webkit-keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}
@
keyframes fade {
	from {opacity: .4
}

to {
	opacity: 1
}

}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
	.text {
		font-size: 20px
	}
}
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 45%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  background-color: rgba(0,0,0,0.8);
}
/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
.prev {
	left:0;
	border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  
}
  
</style>

<title>MeetingPlaner</title>
</head>

<body>
<<<<<<< HEAD
<c:import url="/WEB-INF/views/temp/header.jsp" /> 
	<section class="main_section">
		<h2>메인이다</h2>
	</section>
<c:import url="/WEB-INF/views/temp/footer.jsp" />
=======

<c:import url="/WEB-INF/views/temp/header.jsp"></c:import>

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
		<div class="slideshow-container">
		<div class="mySlides fade">
		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/sports_wa.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/sports" class="move">스포츠 / 레저</a></div>
		</div>
		</div>
		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/life.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/life" class="move">일상 / 이야기</a></div>
		</div>
		</div>
		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/game.jpg"
				style="width: 100%; height: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/game" class="move">게임</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/group.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/group" class="move">친목 / 모임</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/IT.jpg"
				style="width: 100%; height:100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/it" class="move">IT / 기술</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/travel.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/travel" class="move">여행</a></div>
		</div>
		</div>
		</div>
		<div class="mySlides fade">
		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/kindjob.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/job" class="move">취업 / 자기계발</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/culture.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/culture" class="move">문화 / 예술</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/eco.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/eco" class="move">경제 / 비즈니스</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/music.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/music" class="move">음악</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/health.png"
				style="width: 100%; height:100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/health" class="move">건강 / 다이어트</a></div>
		</div>
		</div>		<div class="list">
			<img src="<%=application.getContextPath()%>/resources/images/index/study.jpg"
				style="width: 100%; overflow: hidden;">
			<div class="overlay"> 	
			<div class="text"><a href="meetingList/study" class="move">교육 / 공부</a></div>
		</div>
		</div>
		</div>
	 <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
 	 <a class="next" onclick="plusSlides(1)">&#10095;</a>
<div id="dot" style="text-align:center; display: inline-block; height: 16px; margin-left: 48%;" >
  <span class="dot"></span> <span class="dot"></span> 
</div>
</div>
		
		<!-- Search -->
		<div class="main_search">
			<button id="crate_btn" onclick="meetingCrate()">CRATE</button>
		</div>
	</section>

<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>


<script type="text/javascript">
/* var slideIndex = 0;
showSlides(); */
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 4000); // Change image every 2 seconds
}

function meetingCrate() {
	location.href = "meeting/meetingCrate";
}
</script>
>>>>>>> 7c14ff3f4e58168fce19891e0f0f63fa12b548a9
</body>
</html>