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
		//change();
		
		sock = new SockJS("/meeting/echo-ws");
	    
		sock.onopen = function(){
			/* sock.send("반갑습니다."); */
		}
		sock.onmessage = function(evt){
			/* var regexp = /^[A-Za-z0-9]+님이 접속했습니다\.$/; */
			var regexp = /^접속자 수 [0-9]+$/;
			var regexp2 = /^아이디 [A-Za-z0-9]+$/;
			var regexp3 = /^아이피 ([1-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])){3}$/;
			var regexp4 = /^리스트 [A-Za-z0-9 ]+$/;
			var regexp5 = /^[A-Za-z0-9]+강퇴$/;
			
			if(evt.data == '강퇴당하여 채팅방에 다시 입장할 수 없습니다.'){
				alert('강퇴당하여 채팅방에 다시 입장할 수 없습니다.');
				location.href='./';
			} else{
				if(regexp.test(evt.data)){
					var num = evt.data.split(' ')[2];
					$('span').text('(접속인원 : ' + num + ')');
				} else if(regexp2.test(evt.data)){
					$('#nickname').val(evt.data.split(' ')[1]);
					$('h5').text('닉네임 : ' + evt.data.split(' ')[1]);
				} else if(regexp3.test(evt.data)){
					var ip = evt.data;
					ip = ip.split(' ')[1];
					$('#ip').val(ip);
				} else if(regexp4.test(evt.data)){
					var arr = evt.data.split(' ');
					var nickname = $('#nickname').val();
					$('#list').html('');
					for(var i=1; i<arr.length; i++){
						if(arr[i] != nickname)
							$('#list').append('<li>'+arr[i]+'<button id="kick">강퇴</button></li>');
						else
							$('#list').append('<li>'+arr[i]);
					}
				} else if(regexp5.test(evt.data)){
					var id = evt.data.split('강퇴')[0];
					var nickname = $('h5').text();
					nickname = nickname.substring(6,nickname.length);
					if(id == nickname){
						sock.send($('#ip').val());
						alert('강퇴당했습니다.');
						location.href='./';
					}
				} else
					$("#chatMessage").append(evt.data + "<br/>");
			}
		}
		sock.onerror = function(){
			sock.send('error');
		}
		sock.onclose = function(){
			sock.send("192.168.20.55 퇴장");
		}
		$('#sendMessage').click(function(){
			if($('#message').val() != ''){
				sock.send($('#nickname').val() + ' : ' +$("#message").val());
				$("#chatMessage").append("나 : " + $('#message').val() + "<br/>");
				$('#message').val('');
				/* $('#chatMessage').animate({
				    scrollTop: $('#chatMessage').get(0).scrollHeight
				}, 1); */
				$('#chatMessage').scrollTop($('#chatMessage').get(0).scrollHeight);
			}
		})
	});
	
	function change(){
		var nickname = prompt("이름을 입력하세요.");
		if(nickname != null){
			$('#nickname').val(nickname);
			$('h5').text('닉네임 : ' + $('#nickname').val());
		}
	}
</script>
</head>
<body>
	<input type="hidden" id="ip">
	<input type="hidden" id="nickname">
	<h5 style="display: inline-block;"></h5> <!-- <button id="change">변경</button> -->
	<h4>Chatting Page</h4>
	
	<input type="text" id="message"/>
	<input type="button" id="sendMessage" value="메시지 보내기"/><button id="delete" style="margin-left: 6px;">텍스트 지우기</button>
	<span>(접속인원 : 0)</span>
	<div style="display: inline-block; border: 1px solid black; position: absolute; top: 5px; height: 150px; margin-left: 6px; max-height: 150px; overflow: auto; overflow-y: scroll;">
		<ul style="list-style-type: none; margin: 0; padding: 5px;" id="list">
		
		</ul>
	</div>
	
	<div id="chatMessage" style="overflow: auto; max-height: 500px;"></div>
	
	<script type="text/javascript">
		$('#message').on('keydown', function(key){
			if(key.which == 13)
				$('#sendMessage').click();
		});
		
		$('#change').click(function(){
			change();
		});
		
		/* $(document).keydown(function(key){
			if(key.which == 27)
				sock.onclose = onClose;
		}); */
		$('#delete').click(function(){
			$('#chatMessage').text('');
		});
		/* $('#back').click(function(){
			window.history.back();
		}); */
		$(document).on('click', '#kick', function(){
			var check = confirm('강퇴하겠습니까?');
			sock.send($(this).closest('li').text());
		});
	</script>
</body>
</html>