<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
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
	margin-top: 30%;
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
	border: 1px solid black;
	font-size: 20px;
}
.table{
	height: 85%;
}



</style>

<title>MeetingPlaner</title>
</head>

<body>

<c:import url="/WEB-INF/views/temp/header.jsp"></c:import>

	<section class="main_section">
		<div id="message_rap">
			<div id="msg_left">
				<ul>
					<li><a href="#">쪽지보내기</a></li>
					<li><a href="#">내게쓰기</a></li>
					<li><a href="#">받은쪽지함</a></li>
					<li><a href="#">보낸쪽지함</a></li>
					<li><a href="#">휴지통</a></li>
				</ul>
			</div>
			<div id="msg_right" class="container">
				<div>
					<form action="${board}List" name="frm">
						<input type="hidden" name="curPage"> <select name="search">
							<option value="sendId">sendId</option>
							<option value="contents">contents</option>
						</select> <input type="text" name="find"> <input type="submit"
							value="검색">
					</form>
				</div>
				<table class="table">
					<thead>
						<tr>
							<td style="width: 18%;">보낸사람</td>
							<td style="width: 60%;">내용</td>
							<td style="width: 18%;">날짜</td>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="m">
						<tr>
							<td>${m.sendId}</td>
							<td>${m.contents}</td>
							<td>${m.sendDate}</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>

				<c:if test="${listInfo.curBlock > 1}">
					<span class="go" id="${listInfo.startNum-1}">[이전]</span>
				</c:if>
				<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum}" var="i">
					<span class="go" id="${i}">${i}</span>
				</c:forEach>

				<c:if test="${listInfo.curBlock < listInfo.totalBlock }">
					<span class="go" id="${listInfo.lastNum+1}">[다음]</span>
				</c:if>
			</div>
		</div>
	</section>

<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>

</body>
</html>
