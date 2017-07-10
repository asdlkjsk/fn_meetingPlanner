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
	width: 1000px;
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
	width: 1000px;
	height: 70px;
	margin: 0 auto;
}

.footer_wrap {
	width: 1000px;
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


	<section class="main_section"></section>

	<footer>
		<div class="footer_wrap">
			<div class="img_div">
				<img src="resources/images/logo1.png" class="logo">
			</div>
		</div>
	</footer>

</body>
</html>