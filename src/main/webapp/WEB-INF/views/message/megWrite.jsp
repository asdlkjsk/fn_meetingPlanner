<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<meta charset="utf-8">
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

.info {background-color: #44aaff} /* Blue */
.info:hover {background: #0b7dda;}

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
							<td >받는사람 :
								<input type="text" name="recvId" style="width: 450px;" value="${param.recvId }">
								<input type="hidden" name="sendId" value="${member.id }">
								<input type="hidden" name="mgCheck" value="${param.mgCheck }">
							</td>
						</tr>
						</c:if>					
						<tr>
							<td><textarea rows="7" cols="10" name="contents" style="width: 500px;"></textarea> </td>
						</tr>
					</tbody>
				</table>
				<div>
					<input type="submit" class="btn info" value="보내기">
				</div>
			</form>
			</div>
			</div>
	</section>

<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>

</body>
</html>
