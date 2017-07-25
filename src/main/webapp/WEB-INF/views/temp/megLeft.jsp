<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
#msg_left {
	width : 20%;
	height : 100%;
	float: left;	
	display: inline-block;
	margin-top: 15%;
}
</style>

			<div id="msg_left">
				<ul>
					<li><a href="<%=application.getContextPath() %>/message/ReadList?curPage=1&find=&search=sendId&recvId=${member.id}&board=Read" id="meg_head" style="text-decoration: none !important;"><img src="<%=application.getContextPath()%>/resources/images/meg/bmeg60.png" style="width: 50px; height: auto; vertical-align:middle;">쪽지함</a></li>
					<li><a href="<%=application.getContextPath() %>/message/MegWrite?recvId=&mgCheck=1"style="text-decoration: none !important;">쪽지보내기</a></li>
					<li><a href="<%=application.getContextPath() %>/message/ReadList?curPage=1&find=&search=sendId&recvId=${member.id}&board=Read" style="text-decoration: none !important;">받은쪽지함</a></li>
					<li><a href="<%=application.getContextPath() %>/message/SendList?curPage=1&find=&search=sendId&sendId=${member.id}&board=Send" style="text-decoration: none !important;">보낸쪽지함</a></li>
				</ul>
			</div>

