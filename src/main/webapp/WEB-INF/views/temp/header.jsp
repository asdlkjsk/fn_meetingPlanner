<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <link href="<%=application.getContextPath()%>/resources/js/jquery-3.2.1.min.js" rel="MIME"> --%>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<header>
		<div class="header_wrap">
			<div class="img_div">
				<a href="<%=application.getContextPath()%>">
					<img src="<%=application.getContextPath() %>/resources/images/logo1.png" class="logo">
				</a>
			</div>
			<div class="header_name">
			<a href="<%=application.getContextPath()%>">
				<img src="<%=application.getContextPath() %>/resources/images/30.png" class="name">
				</a>
			</div>

			<div id="login_box">
				<c:if test="${member eq null }">
					<a href="<%=application.getContextPath() %>/member/memberLogin" class="log_btn" role="button">로그인</a>
				</c:if>
				<c:if test="${member ne null }">
					<%-- <a href="<%=application.getContextPath() %>/member/memberLogout" class="log_btn" role="button">로그아웃</a> --%>
					<div class="login_dropdown">
						<span style="cursor: pointer; font-weight: bold; font-size: 20px;">${member.id }님</span>
						<div class="dropdown_box">
							<a href="<%=application.getContextPath() %>/member/myPage" >마이페이지</a>
							<c:if test="${member.grade eq 'manager'}">
								<a href="javascript:;" onclick="window.open('<%=application.getContextPath() %>/companyJoin', 'company', 'width=320, height=807');" >업체예약등록</a>
							</c:if>
							<a href="<%=application.getContextPath() %>/member/groupList" >모임목록</a>
							<a href="<%=application.getContextPath() %>/message/ReadList?curPage=1&find=&search=sendId&recvId=${member.id}&board=Read">쪽지 ${member.mgCheck }</a>
							<a href="<%=application.getContextPath() %>/member/memberLogout" >로그아웃</a>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</header>
	<script type="text/javascript">
			$(document).ready(function(){
			var id = '${member.id}';
			
		    $(".login_dropdown").hover(function(){
		    	$(".dropdown_box").css("display", "block");
		    	$.ajax({
					type : 'get',
					url : '<%=application.getContextPath()%>/member/clientReload',
					data : {
						id:id
					},
					success:function(data){
						data = data.trim();
						$(".dropdown_box").html(data);	
					}/* ,
					fail:function(data){
						data = data.trim();
						$(".dropdown_box").html(data);

					} 
					 */
				});
		        }, function(){
		        	$(".dropdown_box").css("display", "none");
		    });
		});
	</script>