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
				<div id="msg_right" class="container">
				<form action="MegWrite" method="post">
				<table class="table table-hover">
					<tbody>
					<c:if test="${member.id ne recvId }">
						<tr>
							<td >받는사람1 : </td>
							<td>
								<input type="text" name="recvId" style="width: 450px;" value="${param.recvId }">
								<input type="hidden" name="sendId" value="${member.id }">
								<input type="hidden" name="mgCheck" value="${param.mgCheck }">
							</td>
						</tr>
						</c:if>
						
						<c:if test="${member.id eq recvId }">
						<tr>
							<td >받는사람2 : </td>
							<td>
							<input type="text" name="recvId" style="width: 450px;" value="${recvId }">
								<input type="hidden" name="sendId" value="${member.id }">
								<input type="hidden" name="mgCheck" value="${param.mgCheck }">
							</td>
						</tr>
						</c:if>						
						<tr>
							<td colspan="2"><textarea rows="7" cols="10" name="contents" style="width: 500px;"></textarea> </td>
						</tr>
					</tbody>
				</table>
				<div>
					<input type="submit" value="보내기">
					<button class="btn success">보내기</button>
				</div>
			</form>
			</div>
			</div>
	</section>

<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>

</body>
</html>
