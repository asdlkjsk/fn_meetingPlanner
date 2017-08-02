<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	
		<footer>
		<div class="footer_wrap">
			<div class="img_div">
				<a href="<%=application.getContextPath()%>"><img src="<%=application.getContextPath() %>/resources/images/logo1.png" class="logo"></a>
			</div>
			<div class="img_div">
				<a href="javascript:;" onclick="window.open('<%=application.getContextPath()%>/weatherList', 'weather', 'width=588, height=570');">
					<img src="<%=application.getContextPath() %>/resources/images/weather-icon.png" style="width: 53px; height: 53px; margin-left: 5px; vertical-align: bottom;">
				</a>
			</div>
			<div class="img_div">
				<a href="#"><img src="<%=application.getContextPath() %>/resources/images/index/kakao.png" class="logo" style="border-radius: 15%; margin-left: 935px;" ></a>	
			</div>
			<div class="img_div">
			<a href="#"><img src="<%=application.getContextPath() %>/resources/images/index/logo-facebook.png" class="logo" style="border-radius: 15%; margin-left: 940px;"></a>
			</div>
		</div>
	</footer>