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
		
        function allCheckFunc( obj ) {
            $(".chk").prop("checked", $(obj).prop("checked") );
         }

         /* 체크박스 체크시 전체선택 체크 여부 */
         function oneCheckFunc( obj )
         {
            var allObj = $("[name=allchk]");
            var objName = $(obj).attr("name");

            if( $(obj).prop("checked") )
            {
               checkBoxLength = $(".chk").length;
               checkedLength = $(".chk:checked").length;


               if( checkBoxLength == checkedLength ) {
                  allObj.prop("checked", true);
                  
               } else {
                  allObj.prop("checked", false);
               }
            }
            else
            {
               allObj.prop("checked", false);
            }
         }

         $(function(){
            $("[name=allchk]").click(function(){
               allCheckFunc( this );
               if($(this).prop("checked")==false){
                  /* count = 0; */
                  allnum = 0;                  
               } else if($(this).prop("checked")==true){
                  /* count = data.length; */
                  allnum = ${listInfo.perPage};
               }
               
            });
            
            $(".chk").each(function(){
               $(this).click(function(){
                  oneCheckFunc( $(this) );
                  
                     if($(this).prop("checked") == true){
                        /* count = count+1; */
                        
                        
                     } else if($(this).prop("checked") == false){
                        /* var last = ${list[0].sendId }; */
                        
                     }
                     
               });
            });            
         });
                 
         
         $(function() {
             $("#del").click(function() {     
             	if(!confirm('삭제하시겠습니까?')){
         			$("#frm").prop("action", "");
         		} else{
                r = r + "<input type='hidden' name='count' value='"+allnum+"'>";   
                if(allnum==0){
                   r = r + "<input type='hidden' name='all' value='no'>";
                } else {
                   r = r + "<input type='hidden' name='all' value='all'>";                  
                }
                $("#result").append(r);
                $("#frm").attr("action", "./MegListDelete?megNum=${meg.megNum}&recvId=${meg.recvId}").submit();
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

</style>

<title>MeetingPlaner</title>
</head>

<body>

<c:import url="/WEB-INF/views/temp/header.jsp"></c:import>

	<section class="main_section">
		<div id="message_rap">
	<c:import url="/WEB-INF/views/temp/megLeft.jsp"></c:import>
<%-- 			<div id="msg_left">
				<ul>
					<li><a href="<%=application.getContextPath() %>/message/ReadList?curPage=1&find=&search=sendId&recvId=${list[0].recvId}&board=Read" id="meg_head" style="text-decoration: none !important;"><img src="<%=application.getContextPath()%>/resources/images/meg/bmeg60.png" style="width: 50px; height: auto; vertical-align:middle;">쪽지함</a></li>
					<li><a href="#" style="text-decoration: none;">쪽지보내기</a></li>
					<li><a href="#" style="text-decoration: none;">받은쪽지함</a></li>
					<li><a href="#" style="text-decoration: none;">보낸쪽지함</a></li>
					<li><a href="#" style="text-decoration: none;">휴지통</a></li>
				</ul>
			</div> --%>
			<div id="msg_right" class="container">
				<div>
					<form action="${board}List" name="frm">
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
						<input type="text" name="find"> 
						<input type="submit" value="검색">
					</form>
				</div>
				<form action="" id="frm">
				<table class="table table-hover">
					<thead>
						<tr>
							<th><input type="checkbox" id="all" name="allchk" onclick="checkAll();"></th>
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
						<tr>
							<td class="list_td" style="border-top: none;"><input type="checkbox" id="tn${i.index+1 }" name="chk${i.index+1 }" class="chk"></td>
							<td class="list_td" style="border-top: none;">${m.sendId}</td>
							<td class="list_td" style="border-top: none;"><a href="${board}View?megNum=${m.megNum}">${m.contents}</a></td>
							<td class="list_td" style="border-top: none;">${m.sendDate}</td>
						</tr>
					</c:forEach>
					</c:if>
					<c:if test="${member.id eq param.sendId }">
					<c:forEach items="${list}" var="m" varStatus="i">
						<tr>
							<td class="list_td" style="border-top: none;"><input type="checkbox" id="tn${i.index+1 }" name="chk${i.index+1 }" class="chk"></td>
							<td class="list_td" style="border-top: none;">${m.recvId}</td>
							<td class="list_td" style="border-top: none;"><a href="${board}View?megNum=${m.megNum}">${m.contents}</a></td>
							<td class="list_td" style="border-top: none;">${m.sendDate}</td>
						</tr>
					</c:forEach>
					</c:if>
					</tbody>
				</table>

				<div>
				<c:if test="${listInfo.curBlock > 1}">
					<span class="go" id="${listInfo.startNum-1}">[이전]</span>
				</c:if>
				<c:forEach begin="${listInfo.startNum}" end="${listInfo.lastNum}" var="i">
					<span class="go" id="${i}">${i}</span>
				</c:forEach>

				<c:if test="${listInfo.curBlock < listInfo.totalBlock }">
					<span class="go" id="${listInfo.lastNum+1}">[다음]</span>
				</c:if>
				<button type="submit" class="btn btn-danger" id="del">지우자</button>
				</div>
				</form>
			</div>
		</div>
	</section>

<c:import url="/WEB-INF/views/temp/footer.jsp"></c:import>

</body>
</html>
