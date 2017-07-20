<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<style type="text/css">
.main_section {
	width: 1150px;
	height: 810px;
	background-color: yellow;
	margin: 0 auto;
}

</style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp" /> 
	<section class="main_section">
		<form id="frm_agree" method="get" name="grade" action="memberJoin">
			<p>클라이언트<input type="radio" value="client" name="grade" id="client" checked="checked"></p>
			<p>매니져<input type="radio" value="manager" name="grade" id="manager"></p>
			<input type="submit" value="Agree">
		</form>
		
	</section>
<c:import url="/WEB-INF/views/temp/footer.jsp" />
<script type="text/javascript">
$(function() {	
	$('#client').click(function() {
		if($(this).prop('checked'), true){
			$('#manager').prop('checked', false);
			$(this).id();
		}else {
			$('#manager').prop('checked', true);			
		}
	});
	
 	/* if('${param.grade}' == 'c') {
		$("#frm_agree").attr("action", "memberJoin");
	}else if('${param.grade}' == 'm') {
		$("#frm_agree").attr("action", "memberJoin");
	} */
	
});	
</script>
</body>
</html>