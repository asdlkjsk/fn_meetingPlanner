<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<meta charset="utf-8">
<script type="text/javascript">
	$(function() {
		var parameter = "&search=${listInfo.search}&find=${listInfo.find}";
		
		$(".go").click(function() {	
			document.frm.curPage.value = $(this).attr("id");
			document.frm.search.value = '${listInfo.search}';
			document.frm.find.value = '${listInfo.find}';
			document.frm.recvId.value = '${member.id}';
			document.frm.submit();
			/* location.href= "${board}List?curPage="+cur+parameter; */
		});
		
		$("#btn1").click(function(){
			$("#frm").attr("action", "./MegWrite").submit();
		});
		
		$("#btn2").click(function(){
			if(confirm("삭제하시겠습니까?") == true){
				$("#frm").attr("action", "./MegDelete?megNum=${meg.megNum}&recvId=${meg.recvId}").submit();	
			} else{
				return;
			}
			
		});
		
	});
</script>
<style type="text/css">
body {
	height: 100%;
	overflow: hidden;
}

.main_section {
	width: 1150px;
	height: 810px;
	margin: 0 auto;
	/* border: 1px solid #44aaff; */
	
}
#message_rap {
	width: 100%;
	height: 100%;	
	display: inline-block;
}
#msg_left {
	width : 20%;
	height : 100%;
	float: left;	
	display: inline-block;
	margin-top: 15%;
}
#msg_right{
	width : 80%;
	height : 100%;
	float: right;
	display: inline-block;
	border-left: 1px solid #44aaff;
}

li{
	text-align: center;
	font-size: 20px;
	height: 50px;
	margin-top: 20px;
}
.table{
	height: 85%;
	border-collapse: collapse;
	text-align: center;
}
span{
	cursor: pointer;
}
#meg_head{
	font-size: 30px;
}
.btn {
    border: none;
    color: white;
    padding: 14px 28px;
    font-size: 16px;
    cursor: pointer;
}

.info {background-color: #2196F3;} /* Blue */
.info:hover {background: #0b7dda;}

.danger {background-color: #f44336;} /* Red */ 
.danger:hover {background: #da190b;}

</style>

<title>MeetingPlaner</title>
</head>

<body>

<c:import url="/WEB-INF/views/temp/header.jsp"></c:import>

	<section class="main_section">
		<div id="message_rap">
			<c:import url="/WEB-INF/views/temp/megLeft.jsp"></c:import>
			<form action="" id="frm" method="get">
				<div id="msg_right" class="container">
					<table class="table table-hover">
						<tbody>
							<tr>
								<td style="height: 15%;">보낸사람 : ${meg.sendId }</td>
							</tr>
							<tr>
								<td style="height: 15%;">보낸시간 : ${meg.sendDate }</td>
							</tr>
							<tr>
								<td style="height: 68%;">${meg.contents }</td>
							</tr>
						</tbody>
					</table>
					<div>
						<input type="hidden" name="recvId" value="${meg.sendId }">
						<input type="hidden" name="megNum" value="${meg.megNum }">
						<input type="button" class="btn info" style="background-color: #44aaff;" id="btn1" value="답장">
						<input type="button" class="btn danger" id="btn2" value="삭제">
					</div>
				</div>
			</form>
		</div>
	</section>

<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>

</body>
</html>
