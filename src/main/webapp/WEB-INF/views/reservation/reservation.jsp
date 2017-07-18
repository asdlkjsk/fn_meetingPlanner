<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<link rel="stylesheet" href="resources/css/jquery-ui.css"/>
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
<script type="text/javascript">
    $(function () {
        $("#datepicker").datepicker({
        	inline: true, 
        	dateFormat: "yy-mm-dd",    /* 날짜 포맷 */ 
        	prevText: 'prev', 
        	nextText: 'next', 
        	/* showButtonPanel: true, */    /* 버튼 패널 사용 */ 
        	/* changeMonth: true, */        /* 월 선택박스 사용 */ 
        	/* changeYear: true, */         /* 년 선택박스 사용 */ 
        	showOtherMonths: true,    /* 이전/다음 달 일수 보이기 */ 
        	selectOtherMonths: true,    /* 이전/다음 달 일 선택하기 */ 
        	/* showOn: "button", 
        	buttonImage: "img/calendar03.gif", 
        	buttonImageOnly: true,  */
        	minDate: 1, 
        	/* closeText: '닫기', 
        	currentText: '오늘', */ 
        	showMonthAfterYear: true,        /* 년과 달의 위치 바꾸기 */ 
        	/* 한글화 */ 
        	monthNames : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
        	monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
        	dayNames : ['일', '월', '화', '수', '목', '금', '토'],
        	dayNamesShort : ['일', '월', '화', '수', '목', '금', '토'],
        	dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
        	showAnim: 'slideDown', 
        	/* 날짜 유효성 체크 */ 
        	yearSuffix: "년",
        	/* onClose: function( selectedDate ) { 
        		$('#fromDate').datepicker("option","minDate", selectedDate); 
        	} */
        	onSelect: function(dateText){
        		alert(dateText);
        	},
        });
        var date = $('#datepicker').datepicker('getDate');
      	date.setDate(date.getDate()+20);
      	$('#datepicker').datepicker('option', 'maxDate', date);
    });
</script>
<style type="text/css">
	#
</style>
</head>
<body>
	<button>예약하기</button>
	<div id="bg_overlay">
		<div id="datepicker"></div>
	</div>
</body>
</html>