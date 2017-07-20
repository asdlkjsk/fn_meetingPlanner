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
<script src="https://use.fontawesome.com/5909cb3ba3.js"></script>
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
        	onSelect: function(dateText, inst){
        		/* alert(dateText); */
        		var date = $(this).datepicker('getDate');
        		var month = $.datepicker.formatDate('m', date);
        		var day = $.datepicker.formatDate('d', date);
				var dayofname = $.datepicker.formatDate('DD', date);
				dayofname = dayOfName(dayofname);
				var all = month + '.' + day + '.(' + dayofname + ')';
				$('#reservationdate').text(all);
				var i = $('#adate').find('i').last();
				i.removeClass('fa-angle-up');
				i.addClass('fa-angle-down');
				$('#datepicker').hide();
        	}
        });
        var date = $('#datepicker').datepicker('getDate');
       	$('#reservationdate').text($.datepicker.formatDate('m.d.', date)+'('+dayOfName($.datepicker.formatDate('DD', date))+')');
       	date.setDate(date.getDate()+20);
      	$('#datepicker').datepicker('option', 'maxDate', date);
      	$('.ui-datepicker').css({"margin":"0 auto"});
      	$('#datepicker').hide();
    });
    
    function dayOfName(name){
    	var dayofname;
    	switch(name){
    		case 'Monday':
    			dayofname = '월';
    			break;
    		case 'Tuesday':
    			dayofname = '화';
    			break;
    		case 'Wednesday':
    			dayofname = '수';
    			break;
    		case 'Thursday':
    			dayofname = '목';
    			break;
    		case 'Friday':
    			dayofname = '금';
    			break;
    		case 'Saturday':
    			dayofname = '토';
    			break;
    		case 'Sunday':
    			dayofname = '일';
    			break;
   			default: break;
    	}
    	return dayofname;
    }
</script>
<style type="text/css">
	#bg_overlay{
		width: 100%;
		height: 100%;
		background: rgba(11, 11, 11, 0.8);
		display: none;
		position: fixed;
	}
	
	#wrap {
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    position: fixed;
	    outline: none !important;
	    display: none;
	    font-size: 0;
	}
	
	#container{
	    position: absolute;
    	width: 100%;
    	height: 100%;
    	left: 0;
    	top: 0;
	}
	
	#container:before {
	    content: '';
	    display: inline-block;
	    height: 100%;
	    vertical-align: middle;
	}
	
	#content{
		width: 100%;
		position: relative;
		display: inline-block;
	    vertical-align: middle;
	    margin: 0 auto;
	    font-size: 16px;
	}
	
	#bg_title{
		background-color: white;
		max-width: 300px;	
		margin: 0 auto;
		position: relative;
		height: 100px;
		overflow: auto;
	}

	#bg_white{
		background-color: white;
		max-width: 300px;	
		margin: 0 auto;
		position: relative;
		height: 500px;
		overflow: auto;
	}
	
	.select_info{
		position: relative;
	    display: block;
	    padding: 12px 0 12px 2px;
	    margin: 0 16px;
	    border-bottom: 1px solid #e9ecef;
	    -webkit-box-sizing: border-box;
	    moz-box-sizing: border-box;
	    box-sizing: border-box;
	    z-index: 1;
	}
	
	.fa-angle-down{
		position: absolute;
	    top: 14px;
	    right: 0;
	    line-height: 15px;
	}
	
	.fa-angle-up{
		position: absolute;
	    top: 14px;
	    right: 0;
	    line-height: 13px;
	}
	
	.mark{
		position: absolute;
		right: 18px;
		font-size: 14px;
		line-height: 16px;
	}
	
	.select_box{
		position: absolute;
    	top: 0;
    	left: 0;
    	width: 300px;
    	height: inherit;
    	z-index: 2;
    	display: none;
	}
	
	.in_dark{
		/* display: none; */
    	overflow-y: auto;
    	position: fixed;
    	width: inherit;
    	height: inherit;
   	    background-color: #000;
    	opacity: .5;
	}
	
	.select_layer{
		top: 50px;
    	transform: none;
	    position: relative;
	    left: 50%;
	    margin-left: -104px;
	    width: 208px;
	    background-color: #fff;
	    border-radius: 3px;
	    text-align: center;
	}
	
	.select_layer .select_tit {
	    padding: 10px 0;
	    width: 100%;
	    max-width: 208px;
	    background-color: #fff;
	    border-bottom: 1px solid #d7dee2;
	    border-top-left-radius: 3px;
	    border-top-right-radius: 3px;
	}
	
	.select_tit span{
		font-size: 14px;
	}
	
	.select_tit img{
		position: absolute;
	    right: 10px;
	    top: 10px;
	    cursor: pointer;
	}
	
	.select_list{
		position: relative;
    	overflow-y: auto;
    	background-color: #fff;
    	border-bottom-left-radius: 3px;
    	border-bottom-right-radius: 3px;
    	max-height: 297px;
	}
	
	.select_list .item.selected{
		background-color: #e5f9eb;
	}
	
	.select_list .item .anchor{
		display: block;
	    padding: 9px 0;
	    color: #222;
	    font-size: 14px;
	    border-bottom: 1px solid #d7dee2;
	    -webkit-box-sizing: border-box;
	    moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	
	.notice .info{
	    text-align: left;
    	background: #f8f8f8;
   	    position: relative;
	    padding: 12px 16px;
	    background-color: #f8f8f8;
	    border-top: 4px solid #e1e4e7;
	    /* border-bottom: 1px solid #e1e4e7; */
	    color: #666;
	    font-size: 14px;
	}
	.info_tit{
		display: block;
    	margin-bottom: 9px;
    	color: #008eff;
	}
	.info_content{
		font-size: 12px;
		line-height: 19px;
	}
	.additional_form{
	    position: relative;
    	border-top: 4px solid #e9ecef;
    	border-bottom: 1px solid #d7dee2;
	}
	.out_tit{
		overflow: hidden;
	    position: relative;
	    padding: 12px 16px;
	    background-color: #fff;
	    border-top: 1px solid #e2e5e8;
	    border-bottom: 1px solid #e2e5e8;
	    font-weight: bold;
	    font-size: 13px;
	    -webkit-box-sizing: border-box;
	    moz-box-sizing: border-box;
	    box-sizing: border-box;
	}
	.nessasary{
		float: right;
	    padding-top: 1px;
	    margin-bottom: 8px;
	    font-size: 14px;
        position: absolute;
	    top: 10px;
	    right: 19px;
	}
	.fa-check{
		font-size: 10px;
    	color: #e50d0d;
	}
	.form_info{
		padding: 10px 16px;
	}
	.label{
		position: relative;
    	display: block;
   		line-height: 15px;
    	padding-bottom: 4px;
    	font-size: 12px;
	}
	.checkboxFive {
		width: 13px;
		position: relative;
		display: inline-block;
		vertical-align: sub;
	}
	.checkboxFive label {
		cursor: pointer;
		position: absolute;
		width: 13px;
		height: 13px;
		top: 0;
	  	left: 0;
		background: #eee;
		border:1px solid #ddd;
	}
	.checkboxFive label:after {
	    opacity: 0;
	    content: '';
	    position: absolute;
	    width: 9px;
	    height: 5px;
	    background: transparent;
	    top: 2px;
	    left: 1px;
	    border: 2px solid #333;
	    border-top: none;
	    border-right: none;
	    transform: rotate(-45deg);
	}
	.checkboxFive label:hover::after {
		opacity: 0.5;
	}
	.checkboxFive input[type=checkbox]:checked + label:after {
		opacity: 1;
	}
	.block_content{
    	font-size: 12px;
	}
	.item_checkbox, .item_text{
		margin-bottom: 10px;
	}
	input[type=search], input[type=text], input[type=password], input[type=email], input[type=tel] {
	    -webkit-appearance: none;
	    -ms-appearance: none;
	    appearance: none;
	    padding-left: 6px;
	    border: 1px solid #eee;
	    border-radius: 0;
    }
	.form_info input[type=search],
	.form_info input[type=text], 
	.form_info input[type=password], 
	.form_info input[type=email],
	.form_info input[type=tel] {
	    display: block;
	    width: 100%;
	    height: 20px;
	    background-color: #fff;
	    line-height: 30px;
	    -webkit-box-sizing: border-box;
	    moz-box-sizing: border-box;
	    box-sizing: border-box;
	    font-size: 12px;
	}
	input[type=text].text {
    	font-size: 15px;
	}
</style>
</head>
<body style="height: 974px;">
	<div id="bg_overlay"></div>
	<div id="wrap">
		<div id="container">
			<div id="content">
				<div id="bg_title"></div>
				<div id="bg_white">
					<a href="javascript:;" class="select_info" id="adate">
						<i class="fa fa-calendar" aria-hidden="true"></i>
						<span style="font-size: 14px;">날짜</span>
						<span class="mark" id="reservationdate"></span>
						<i class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
					<div id="datepicker"></div>
					<a href="javascript:;" class="select_info" id="atime">
						<i class="fa fa-clock-o" aria-hidden="true"></i>
						<span style="font-size: 14px;">시간</span>
						<span class="mark" id="reservationtime">시간을 선택해 주세요</span>
						<i class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
					<div class="select_box">
						<div class="in_dark"></div>
						<div class="select_layer">
							<div class="select_tit">
								<span>선택하기</span>
								<img class="close" alt="close" src="resources/images/close.png" width="12" height="12">
							</div>
							<ul class="select_list" id="time_list">
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 5:30</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 6:00</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 6:30</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 7:00</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 7:30</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 8:00</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 8:30</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 9:00</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 9:30</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 10:00</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>오후 10:30</span></a>
								</li>
							</ul>
						</div>
					</div>
					<a href="javascript:;" class="select_info" id="anum">
						<i class="fa fa-user-o" aria-hidden="true"></i>
						<span style="font-size: 14px;">인원</span>
						<span class="mark" id="reservationnum">인원을 선택해 주세요</span>
						<i class="fa fa-angle-down" aria-hidden="true"></i>
					</a>
					<div class="select_box">
						<div class="in_dark"></div>
						<div class="select_layer">
							<div class="select_tit">
								<span>선택하기</span>
								<img class="close" alt="close" src="resources/images/close.png" width="12" height="12">
							</div>
							<ul class="select_list" id="num_list">
								<li class="item">
									<a href="javascript:;" class="anchor"><span>2명</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>3명</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>4명</span></a>
								</li>
								<li class="item">
									<a href="javascript:;" class="anchor"><span>5명</span></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="notice">
						<p class="info">
							<em class="info_tit">
								<i class="fa fa-info-circle" aria-hidden="true"></i>
								<span style="font-weight: bold;">알립니다</span>
							</em>
							<span class="info_content">* 예약자명, 연락처 반드시 기재, Private Room 희망시 업장으로 연락부탁드립니다.<br>
* 예약문의 : 02-566-0870 (핸드폰 : 010-6484-6113, 010-4417-0713)<br>
* 7명 이상 예약을 원하시는 경우, 유선으로 문의 부탁드립니다.</span>
						</p>
					</div>
					<div class="additional_form">
						<h3 class="out_tit">추가 정보</h3>
						<div class="nessasary">
							<i class="fa fa-check" aria-hidden="true" style="position: absolute; right: 51px; top: 5px;"></i>
							<span style="color:#989898; font-size: 12px;">필수입력</span>
						</div>
						<form class="form_info">
							<div class="item_checkbox">
								<span class="label"> 
									<i class="fa fa-check" aria-hidden="true" style=""></i>
									<span style="font-weight: bold">자리배정 희망여부</span>
								</span>
								<div class="block_control">
									<div class="checkboxFive">
										<input type="checkbox"value="1" id="checkboxFiveInput" name=""/>
										<label for="checkboxFiveInput"></label>
									</div>
									<span class="block_content">private room</span>
								</div>
								<div class="block_control">
									<div class="checkboxFive">
										<input type="checkbox"value="1" id="checkboxFiveInput1" name=""/>
										<label for="checkboxFiveInput1"></label>
									</div>
									<span class="block_content">hall</span>
								</div>
								<div class="block_control">
									<div class="checkboxFive">
										<input type="checkbox"value="1" id="checkboxFiveInput2" name=""/>
										<label for="checkboxFiveInput2"></label>
									</div>
									<span class="block_content">상관없음.</span>
								</div>
							</div>
							<div class="item_text">
								<span class="label"> 
									<i class="fa fa-check" aria-hidden="true" style=""></i>
									<span style="font-weight: bold">외국인 동반여부</span>
								</span>
								<div class="block_control">
									<input type="text">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<button id="reservation">예약하기</button>	
</body>
<script type="text/javascript">
	var mouse_is_inside = false;
	var mouse_is_content_inside = false;
	
	$('#reservation').click(function(){
		$('#bg_overlay').fadeIn(180);
		$('#wrap').fadeIn(180);
	});
	
	$(document).on('mouseenter', '#bg_white', function(){
    	mouse_is_inside=true;
    }).on('mouseleave', '#bg_white', function(){
    	mouse_is_inside=false;
    });
	
	$(document).on('click', '#wrap', function(){
		if(!mouse_is_inside){
			$('#bg_overlay').fadeOut(180);
			$('#wrap').fadeOut(180);
		}
	});
	
	$('#adate').click(function(){
		var i = $(this).find('i').last();
		if(i.hasClass('fa-angle-up')){
			i.removeClass('fa-angle-up');
			i.addClass('fa-angle-down');
			$('#datepicker').hide();
		} else if(i.hasClass('fa-angle-down')){
			i.removeClass('fa-angle-down');
			i.addClass('fa-angle-up');
			$('#datepicker').show();
		}
	});
	
	$('.select_info').click(function(){
		$(this).next('.select_box').show();
	});
	
	$('.close').click(function(){
		$(this).closest('.select_box').hide();
	});
	
	$(document).on('mouseenter', '.select_layer', function(){
    	mouse_is_content_inside=true;
    }).on('mouseleave', '.select_layer', function(){
    	mouse_is_content_inside=false;
    });
	
	$(document).on('click', '.in_dark', function(){
		if(!mouse_is_content_inside){
			$(this).parent('.select_box').hide();
		}
	});
	
	$('#time_list li.item').click(function(){
		$(this).closest('.select_box').hide();
		$('#reservationtime').text($(this).find('span').text());
	});
	
	$('#num_list li.item').click(function(){
		$(this).closest('.select_box').hide();
		$('#reservationnum').text($(this).find('span').text());
	});
</script>
</html>