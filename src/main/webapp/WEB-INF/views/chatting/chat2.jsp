<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='resources/js/sockjs.js'/>"></script>
<script type="text/javascript">
	var sock = null;
	
	$(function(){
		change();
		sock = new SockJS("/meeting/echo-ws2");
		sock.onopen = function(){
			/* sock.send("반갑습니다."); */
		}
		sock.onmessage = function(evt){
			$("#chatMessage").append(evt.data + "<br/>");
		}
		sock.onclose = function(){
			sock.send("192.168.20.55 퇴장");
		}
		$('#sendMessage').click(function(){
			if($('#message').val() != ''){
				sock.send($('#nickname').val() + ' : ' +$("#message").val());
				$("#chatMessage").append("나 : " + $('#message').val() + "<br/>");
				$('#message').val('');
			}
		})
		alert(sock.sessionId);
	});
	
	function change(){
		var nickname = prompt("이름을 입력하세요.");
		if(nickname != null){
			 $('#nickname').val(nickname);
			 var nickname = $('#nickname').val();
			 alert(nickname);
			$('h5').text('닉네임 : ' + nickname);
		}
	}
</script>
</head>
<body>
	<input type="hidden" id="nickname">
	<h5 style="display: inline-block;"></h5> <button id="change">변경</button>
	<h4>Chatting Page</h4> 
	
	<input type="text" id="message"/>
	<input type="button" id="sendMessage" value="메시지 보내기"/>
	<div id="chatMessage" style="overflow: auto; max-height: 500px;"></div>
	
	<script type="text/javascript">
		$('#message').on('keydown', function(key){
			if(key.which == 13)
				$('#sendMessage').click();
		});
		
		$('#change').click(function(){
			change();
		});
	</script>
</body>
</html>