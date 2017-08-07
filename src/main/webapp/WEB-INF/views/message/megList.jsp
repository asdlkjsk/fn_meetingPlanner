<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<c:import url="/WEB-INF/views/temp/1bootStrap.jsp"></c:import>
<meta charset="utf-8">
<script type="text/javascript">
	$(function() {
		var allnum = "";
		var parameter = "&search=${listInfo.search}&find=${listInfo.find}";

		$(".go").click(function() {
			document.frm2.curPage.value = $(this).attr("id");
			document.frm2.search.value = '${listInfo.search}';
			document.frm2.find.value = '${listInfo.find}';
			document.frm2.recvId.value = '${member.id}';
			document.frm2.submit();
			/* location.href= "${board}List?curPage="+cur+parameter; */
		});

		function allCheckFunc(obj) {
			$(".chk").prop("checked", $(obj).prop("checked"));
			$("[name=allchk]").attr("value", "all");
		}

		/* 체크박스 체크시 전체선택 체크 여부 */
		function oneCheckFunc(obj) {
			var allObj = $("[name=allchk]");
			var objName = $(obj).attr("name");

			if ($(obj).prop("checked")) {
				checkBoxLength = $(".chk").length;
				checkedLength = $(".chk:checked").length;

				if (checkBoxLength == checkedLength) {
					allObj.prop("checked", true);
					allObj.attr("value", "all");
				} else {
					allObj.prop("checked", false);
				}
			} else {
				allObj.prop("checked", false);
			}
		}

		$(function() {
			$("[name=allchk]").click(function() {
				allCheckFunc(this);
				if ($(this).prop("checked") == false) {
					/* count = 0; */
					allnum = 0;
				} else if ($(this).prop("checked") == true) {
					/* count = data.length; */
					allnum = $
					{
						listInfo.perPage
					}
					;
				}

			});

			$(".chk").each(function() {
				$(this).click(function() {
					oneCheckFunc($(this));

					if ($(this).prop("checked") == true) {
						/* count = count+1; */

					} else if ($(this).prop("checked") == false) {
						/* var last = ${list[0].sendId }; */

					}

				});
			});
		});

		$(function() {
			var allObj = $("[name=allchk]");

			$("#del").click(function() {

				if (!confirm('삭제하시겠습니까?')) {
					$("#frm").attr("action", "./${board}List?").submit();
				} else {
					$("#frm").attr("action", "./${board}ListDelete?").submit();
				}
			});
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
	width: 20%;
	height: 100%;
	float: left;
	display: inline-block;
	margin-top: 15%;
}

#msg_right {
	width: 80%;
	height: 100%;
	float: right;
	display: inline-block;
	border-left: 1px solid #44aaff;
}

li {
	text-align: center;
	font-size: 20px;
	height: 50px;
	margin-top: 20px;
}

.table {
	height: 90%;
	border-collapse: collapse;
	text-align: center;
}

span {
	cursor: pointer;
}

#meg_head {
	font-size: 30px;
}

#del {
	float: right;
}

#move {
	
}

span {
	display: inline-block;
}

.go {
	width: 30px;
	height: 30px;
	font-size: 25px;
	color: white;
	font-weight: 700;
	line-height: 30px;
	background-color: #44aaff;
	border-radius: 5px;
}

.go:hover {
	background: #0b7dda;
}

form {
	height: 90%;
}
</style>

<title>MeetingPlaner</title>
</head>

<body>

	<c:import url="/WEB-INF/views/temp/header.jsp"></c:import>

	<section class="main_section">
		<div id="message_rap">
		<!--  -->
			<c:import url="/WEB-INF/views/temp/megLeft.jsp"></c:import>
			<div id="msg_right" class="container">
				<form action="" id="frm" name="frm2">
					<div>
						<c:if test="${member.id eq param.recvId }">
							<input type="hidden" name="curPage">
							<input type="hidden" name="recvId" value="${param.recvId}">
							<select name="search">
								<option value="sendId">sendId</option>
								<option value="contents">contents</option>
							</select>
						</c:if>
						<c:if test="${member.id eq param.sendId }">
							<input type="hidden" name="curPage">
							<input type="hidden" name="sendId" value="${param.sendId}">
							<select name="search">
								<option value="recvId">recvId</option>
								<option value="contents">contents</option>
							</select>
						</c:if>
						<input type="hidden" name="board" value="${board }"> <input
							type="text" name="find"> <input type="submit" value="검색">

					</div>

					<table class="table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" id="all" name="allchk"
									value="no"></th>
								<c:if test="${member.id eq param.recvId }">
									<th style="width: 18%; text-align: center;">보낸사람</th>
								</c:if>
								<c:if test="${member.id eq param.sendId }">
									<th style="width: 18%; text-align: center;">받은사람</th>
								</c:if>
								<th style="width: 60%; text-align: center;">내용</th>
								<th style="width: 18%; text-align: center;">날짜</th>
							</tr>
						</thead>
						<tbody>

							<c:if test="${member.id eq param.recvId }">
								<c:forEach items="${list}" var="m" varStatus="i">
									<c:if test="${m.rcheck eq 1}">
										<tr>
											<td class="list_td" style="border-top: none; color: blue;"><input
												type="checkbox" id="tn${i.index+1 }" name="chk" class="chk"
												value="${m.megNum}">
												</td>
											<td class="list_td" style="border-top: none; color: blue;">${m.sendId}
											</td>
											<td class="list_td"
												style="border-top: none; color: blue; display: inline-block; text-overflow: ellipsis; white-space: nowrap; word-wrap: normal; width: 400px; overflow: hidden;"><a
												style="color: blue;" href="${board}View?megNum=${m.megNum}">${m.contents}</a></td>
											<td class="list_td" style="border-top: none; color: blue;">${m.sendDate}</td>
										</tr>
									</c:if>
									<c:if test="${m.rcheck eq 0}">
										<tr>
											<td class="list_td"
												style="border-top: none; font-style: italic;">
												<input type="checkbox" id="tn${i.index+1 }" name="chk" class="chk"
												value="${m.megNum}">
												</td>
											<td class="list_td"
												style="border-top: none; font-style: italic;">${m.sendId}
											</td>
											<td class="list_td"
												style="border-top: none; font-style: italic; display: inline-block; text-overflow: ellipsis; white-space: nowrap; word-wrap: normal; width: 400px; overflow: hidden;"><a
												style="color: black;" href="${board}View?megNum=${m.megNum}">${m.contents}</a></td>
											<td class="list_td"
												style="border-top: none; font-style: italic;">${m.sendDate}</td>
										</tr>
									</c:if>
								</c:forEach>

							</c:if>
							<c:if test="${member.id eq param.sendId }">
								<c:forEach items="${list}" var="m" varStatus="i">
									<c:if test="${m.rcheck eq 1}">
										<tr>
											<td class="list_td" style="border-top: none; color: blue;"><input
												type="checkbox" id="tn${i.index+1 }" name="chk" class="chk"
												value="${m.megNum}">
												</td>
											<td class="list_td" style="border-top: none; color: blue;">${m.recvId}</td>
											<td class="list_td"
												style="border-top: none; display: inline-block; text-overflow: ellipsis; white-space: nowrap; word-wrap: normal; width: 400px; overflow: hidden;"><a
												class="contents1" href="${board}View?megNum=${m.megNum}">${m.contents}</a></td>
											<td class="list_td" style="border-top: none; color: blue;">${m.sendDate}
												<input type="hidden" value="${m.rcheck }">
											</td>
										</tr>
									</c:if>
									<c:if test="${m.rcheck eq 0 }">
										<tr>
											<td class="list_td" style="border-top: none;"><input
												type="checkbox" id="tn${i.index+1 }" name="chk" class="chk"
												value="${m.megNum}">
												</td>
											<td class="list_td" style="border-top: none;">${m.recvId}</td>
											<td class="list_td"
												style="border-top: none; color: black; display: inline-block; text-overflow: ellipsis; white-space: nowrap; word-wrap: normal; width: 400px; overflow: hidden;">
												<a href="${board}View?megNum=${m.megNum}">${m.contents}</a></td>
											<td class="list_td" style="border-top: none;">${m.sendDate}<input
												type="hidden" value="${m.rcheck }">
											</td>
										</tr>
									</c:if>
								</c:forEach>
							</c:if>
						</tbody>
					</table>

					<div style="width: 100%; height: 50px; text-align: center;">
						<c:if test="${listInfo.curBlock > 1}">
							<span class="go" id="${listInfo.startNum-1}">〈</span>
						</c:if>

						<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum}"
							var="i">
							<span class="go" id="${i}">${i}</span>
						</c:forEach>

						<c:if test="${listInfo.curBlock < listInfo.totalBlock }">
							<span class="go" id="${listInfo.lastNum+1}">〉</span>
						</c:if>
						<button class="btn btn-danger" id="del">지우자</button>
					</div>

				</form>
			</div>
		</div>
	</section>

	<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>

</body>
</html>
