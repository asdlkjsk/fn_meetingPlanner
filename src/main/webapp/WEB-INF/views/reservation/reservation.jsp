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
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="https://use.fontawesome.com/5909cb3ba3.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/jquery.form.js"></script>
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

	#bg_wrap{
		background-color: white;
		max-width: 300px;	
		margin: 0 auto;
		position: relative;
		height: 555px;
	}
	
	#bg_title{
		background-color: white;
		max-width: 300px;	
		margin: 0 auto;
		position: relative;
		height: 55px;
		padding: 1em;
	    text-align: center;
	    border-bottom: 4px solid rgba(0, 142, 255, 0.79);
	}
	
	#bg_title > h2{
	    text-align: center;
    	font-size: 20px;
    	font-weight: bold;
	}
	
	#bg_content_wrap{
		overflow: auto;
		height: 500px;
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
    	height: 555px;
   	    background-color: #000;
    	opacity: .5;
	}
	
	.select_layer{
		top: 100px;
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
	
	.select_list .item.selected,
	.select_list .item:hover{
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
	.form_wrap{
		position: relative;
    	border-top: 4px solid #e1e4e7;
    	overflow: hidden;
	}
	/* .additional_form{
    	border-bottom: 1px solid #e1e4e7;
	} */
	.out_tit{
	    position: relative;
	    padding: 12px 16px;
	    background-color: #fff;
	    border-top: 1px solid #e1e4e7;
	    border-bottom: 1px solid #e1e4e7;
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
	.form_vertical{
		padding: 10px 16px;
	}
	.label{
		position: relative;
    	display: block;
   		line-height: 15px;
    	padding-bottom: 4px;
    	font-size: 12px;
	}
	.form_vertical i,
	.form_horizontal i{
		position: absolute;
		top: 2px;
	}
	.form_vertical .label span,
	.form_horizontal .label span{
		font-weight: bold;
		margin-left: 14px;
	}
	.form_vertical .label span.not,
	.form_horizontal .label span.not{
		margin-left: 0px;
	}
	.ckbox {
		width: 13px;
		position: relative;
		display: inline-block;
		vertical-align: sub;
	}
	.ckbox label {
		cursor: pointer;
		position: absolute;
		width: 13px;
		height: 13px;
		top: 0;
	  	left: 0;
		background: #eee;
		border:1px solid #ddd;
	}
	.ckbox label:after {
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
	.ckbox label:hover::after {
		opacity: 0.5;
	}
	.ckbox input[type=checkbox]:checked + label:after {
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
	.form_vertical input[type=search],
	.form_vertical input[type=text], 
	.form_vertical input[type=password], 
	.form_vertical input[type=email],
	.form_vertical input[type=tel],
	.form_horizontal input[type=search],
	.form_horizontal input[type=text], 
	.form_horizontal input[type=password], 
	.form_horizontal input[type=email],
	.form_horizontal input[type=tel] {
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
	.form_horizontal{
		padding: 4px 16px;
	}
	.form_horizontal .inline_form {
	    position: relative;
	    padding-left: 65px;
	    margin-top: 6px;
	    height: 20px;
	}
	.form_horizontal .inline_form>.label {
	    display: inline-block;
	    float: left;
	    margin-left: -65px;
	    width: 65px;
	    color: #666;
	    font-size: 12px;
	    font-weight: bold;
	    line-height: 15px;
	    margin-top: 2px;
	    cursor: pointer;
	}
	.form_horizontal .inline_form .inline_control {
	    width: 100%;
	    display: inline-block;
	    float: left;
	}
	.form_horizontal .inline_form .inline_control > p {
	    font-size: 11px;
    	line-height: 17px;
    	margin-top: 1px;
    	margin-left: 8px;
	}
	.form_horizontal .inline_form .inline_control > textarea {
	    border: 1px solid #eee;
	    width: 186px;
	    font-size: 11px;
	    height: 40px;
	}
	.form_horizontal .inline_form:after, .form_horizontal .inline_form:before {
    	content: " ";
    	display: table;
	}
	.owner{
	    display: table;
	    width: auto;
	    border-spacing: 4px;
	    margin-left: -8px;
	    padding: 6px 20px;
	    font-size: 12px;
	    line-height: 15px;
	}
	.owner .item{
		display: table-row;
	}
	.owner .item em{
		margin-left: 2px;
	}
	.owner_tit{
		color: #666;
		display: table-cell;
		white-space: nowrap;
	}
	.bk_btn{
		border: 1px solid #ccc;
		background-color: #d1d1d1;
		margin: 15px auto;
    	display: block;
    	padding: 4px;
    	cursor: pointer;
	}
	.bk_btn span{
		font-size: 12px;
		color: #fff;
		vertical-align: middle;
    	display: block;
	}
	.ui-timepicker-container{
		font-size: 16px;
	}
	.top_info{
		display: none;
		z-index: 9900;
    	overflow: hidden;
    	position: fixed;
	    margin: 0;
	    padding: 0;
	    height: auto;
	    background-color: #fbfbe7;
	    background-clip: padding-box;
	    border-bottom: 1px solid rgba(0,0,0,.1);
	}
	.top_info .top_info_txt {
	    padding: 12px 16px;
	    color: #333;
	    text-align: center;
	    font-size: 14px;
	    width: 283px;
	    height: 41px;
	}
	.top_info .top_info_txt .fa-info-circle {
	    margin-right: 2.5px;
	    font-size: 14px;
	    color: #008eff;
	}
	.mfp-close {
	    color: #333333;
	    overflow: visible;
	    cursor: pointer;
	    background: transparent;
	    border: 0;
	    -webkit-appearance: none;
	    display: block;
	    outline: none;
	    padding: 0;
	    z-index: 1046;
	    -webkit-box-shadow: none;
	    box-shadow: none;
	    width: 26px;
	    height: 26px;
	    line-height: 26px;
	    position: absolute;
	    right: 0;
	    top: 0;
	    text-decoration: none;
	    text-align: center;
	    opacity: 0.65;
	    filter: alpha(opacity=65);
	    font-style: normal;
	    font-size: 22px;
	    font-family: Arial, Baskerville, monospace;
	}
	.mfp-close:hover{
		opacity: 1;
	}
</style>
<script type="text/javascript">
	var selectedDate;
	var companydata;
	var checkbox = 0;
	var i = 0;

    $(function () {
    	$.ajax({
    		method: "POST",
    		url: "revTimeRenew",
    		data: {cname:'뱀부 하우스'},
    		success: function(data){
    			/* $(data).each(function(){
    				alert(new Date(this.rsDate).getHours());
    			}); */
    			companydata = data;
    			var addinfo = companydata[0].addInfo;
    			$('.info_content').html(companydata[0].notice.replaceAll('<br>', '\r\n'));
    			$('.form_vertical .item_checkbox').remove();
    			$('.form_vertical .item_text').remove();
    			var arr = addinfo.split('&');
				
    			$(arr).each(function(){
	    			var tag;
	    			var title = this.split('*')[0];
	    			var content = this.split('*')[1];
	    			var titlearr = title.split('/');
	    			var ck = titlearr[0];
	    			title = titlearr[1];
	    			var kind = titlearr[2].split('(')[0];
	    			var over = titlearr[2].split('(')[1];
	    			content = content.split(',');
	    			if(kind == 'text')
	    				tag = '<div class="item_text"><span class="label">';
    				else if(kind == 'checkbox')
    					tag = '<div class="item_checkbox"><span class="label">';
 					if(ck == 'ck')
 						tag += '<i class="fa fa-check" aria-hidden="true"></i>'+
 							'<span>'+title+'</span></span>';
					else if(ck == 'nck')
						tag += '<span class="not">'+title+'</span></span>';
						
 					if(kind == 'text'){
 						i++;
    					tag += '<div class="block_control"><input type="text" class="'+title+'"></div>';
 					}
   					else if(kind == 'checkbox')
   						$(content).each(function(){   
   							i++;
   							if(over == 'over'){
		    					tag += '<div class="block_control"><div class="ckbox">' +
		    						'<input type="checkbox" value="'+this+'"'+'id="checkbox'+i+'">' +
		    						'<label for="checkbox'+i+'"></label></div>' +
		    						' <span class="block_content">'+this+'</span></div>';
   							} else if(over == 'nover'){
   								tag += '<div class="block_control"><div class="ckbox">' +
		    						'<input type="checkbox" value="'+this+'"'+'id="checkbox'+i+'" onclick="checkBox(this)">' +
		    						'<label for="checkbox'+i+'"></label></div>' +
		    						' <span class="block_content">'+this+'</span></div>';
   							}
	    				});
 					$('.form_vertical').append(tag);
    			});
    		}
    	});
    	
    	$('.timepicker').timepicker({
    	    timeFormat: 'H:mm p',
    	    interval: 30,
    	    minTime: '0:00am',
    	    maxTime: '11:30pm',
    	    defaultTime: '0:00am',
    	    startTime: '0:00am',
    	    dynamic: false,
    	    dropdown: true,
    	    scrollbar: true
    	});
    	
    	$("#datepicker").datepicker({
        	inline: true, 
        	dateFormat: "yy-mm-dd",    /* 날짜 포맷 */ 
        	prevText: '이전', 
        	nextText: '다음', 
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
        		selectedDate = $(this).datepicker('getDate');
        		dateText += ' 00:00';
        		$.ajax({
        			method: "POST",
        			url: "revTimeList",
        			data: {cName:'뱀부 하우스', rsDate:dateText},
        			success: function(data){
        				$('#time_list li.item').remove();
        				$(data).each(function(){
        					var date = new Date(this.rsDate);
        					var hour = date.getHours();
        					var minute = date.getMinutes();
        					var all = apm(hour)+' '+getHour(hour)+':'+getMinute(minute);
        					$('#time_list').append('<li class="item"><a href="javascript:;" class="anchor"><span>'+all+'</span></a></li>');
        				});        				
        			}
        		});
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
				$('#reservationtime').text('시간을 선택해 주세요');
				$('#reservationnum').text('인원을 선택해 주세요');
				$('.inline_control p').text('날짜/시간, 인원을 선택하세요.');
        	}
        });
    });
    
    function getHour(hour){
    	if(hour > 12)
    		hour -= 12;
    	return hour;
    }
    
    function getMinute(minute){
    	if(minute == 0)
    		minute = '00';
    	return minute;
    }
    
    function apm(hour){
    	var apm;
    	if(hour >= 12)
    		apm = '오후';
    	else 
    		apm = '오전';
    	return apm;
    }
    
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
</head>
<body style="height: 974px;">
	<div id="bg_overlay"></div>
	<div id="wrap">
		<div id="container">
			<div id="content">
				<div id="bg_wrap">
					<div id="bg_title">
						<h2 style="text-align: center;">뱀부 하우스</h2>
					</div>
					<div id="bg_content_wrap">
						<div class="top_info">
							<p class="top_info_txt">
								<i class="fa fa-info-circle" aria-hidden="true"></i><span>예약 시간을 선택해 주세요.</span>
							</p>
							<button title="닫기" type="button" class="mfp-close toclose">×</button>
						</div>
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
						<div class="form_wrap">
							<h3 class="out_tit">추가 정보</h3>
							<div class="nessasary">
								<i class="fa fa-check" aria-hidden="true" style="position: absolute; right: 51px; top: 4px;"></i>
								<span style="color:#989898; font-size: 12px;">필수입력</span>
							</div>
							<form class="form_vertical">
								<div class="item_checkbox">
									<span class="label"> 
										<i class="fa fa-check" aria-hidden="true"></i> <span>자리배정 희망여부</span>
									</span>
									<div class="block_control">
										<div class="ckbox">
											<input type="checkbox" value="1" id="checkboxInput" name="" onclick="checkBox(this)"/>
											<label for="checkboxInput"></label>
										</div>
										<span class="block_content">private room</span>
									</div>
									<div class="block_control">
										<div class="ckbox">
											<input type="checkbox" value="1" id="checkboxInput1" name="" onclick="checkBox(this)"/>
											<label for="checkboxInput1"></label>
										</div>
										<span class="block_content">hall</span>
									</div>
									<div class="block_control">
										<div class="ckbox">
											<input type="checkbox" value="1" id="checkboxInput2" name="" onclick="checkBox(this)"/>
											<label for="checkboxInput2"></label>
										</div>
										<span class="block_content">상관없음.</span>
									</div>
								</div>
								<div class="item_text">
									<span class="label"> 
										<i class="fa fa-check" aria-hidden="true"></i>
										<span>외국인 동반여부</span>
									</span>
									<div class="block_control">
										<input type="text">
									</div>
								</div>
								<div class="item_text">
									<span class="label">
										<span class="not">알러지 여부</span>
									</span>
									<div class="block_control">
										<input type="text">
									</div>
								</div>
							</form>
						</div>
						<div class="form_wrap">
							<h3 class="out_tit">예약자 정보</h3>
							<div class="nessasary">
								<i class="fa fa-check" aria-hidden="true" style="position: absolute; right: 51px; top: 4px;"></i>
								<span style="color:#989898; font-size: 12px;">필수입력</span>
							</div>
							<form class="form_horizontal" id="frm" method="post" action="reservationWrite">
								<input type="hidden" name="cName"/>
								<input type="hidden" name="id"/>
								<input type="hidden" name="revTerm">
								<div class="inline_form">
									<label class="label" for="name">
										<i class="fa fa-check" aria-hidden="true"></i>
										<span>예약명</span>
									</label>
									<div class="inline_control">
										<input type="text" id="name" name="revName">
									</div>
								</div>
								<div class="inline_form">
									<label class="label" for="tel">
										<i class="fa fa-check" aria-hidden="true"></i>
										<span>연락처</span>
									</label>
									<div class="inline_control">
										<input type="text" id="tel" name="phone">
									</div>
								</div>
								<div class="inline_form">
									<label class="label" for="email">
										<span style="margin-left: 14px;">이메일</span>
									</label>
									<div class="inline_control">
										<input type="text" id="email" name="email">
									</div>
								</div>
								<div class="inline_form">
									<label class="label">
										<span style="margin-left: 14px;">예약내용</span>
									</label>
									<div class="inline_control">
										<p>날짜/시간, 인원을 선택하세요.</p>
										<input type="hidden" name="revDate">
										<input type="hidden" name="revPeople">
									</div>
								</div>
								<div class="inline_form">
									<label class="label">
										<span style="margin-left: 14px;">요청사항</span>
									</label>
									<div class="inline_control">
										<textarea placeholder="업체에 요청하실 내용을 적어주세요." name="reqTerm"></textarea>
									</div>
								</div>
							</form>
						</div>
						<div class="form_wrap">
							<a href="javascript:;" class="out_tit" id="seller" style="display: block;"><span>판매자 정보</span>
							<i class="fa fa-angle-down" aria-hidden="true" style="position: static; float: right; font-size: 15px;"></i></a>
							<ul class="owner">
								<li class="item"><span class="owner_tit">상호</span>
								<em>뱀부 하우스</em></li>
								<li class="item"><span class="owner_tit">대표자명</span>
								<em>뱀부 하우스</em></li>
								<li class="item"><span class="owner_tit">소재지</span>
								<em>서울특별시 강남구 역삼동 658-10(서울특별시 강남구 언주로107길 33)</em></li>
								<li class="item"><span class="owner_tit">연락처</span>
								<em>02-566-0870 </em></li>
							</ul>
						</div>
						<button class="bk_btn"><span>예약 신청하기</span></button>
					</div>
					<button title="닫기" type="button" class="mfp-close allclose">×</button>
				</div>
			</div>
		</div>
	</div>
	<button id="reservation">예약하기</button>	
	<input class="timepicker" style="text-align: center; width: 130px;">
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
</body>
<script type="text/javascript">
	var mouse_is_inside = false;
	var mouse_is_content_inside = false;
	var timer;
	
	$('#reservation').click(function(){
		$('#datepicker').datepicker('setDate', 1);
        var date = $('#datepicker').datepicker('getDate');
        var date = date;
        /* selectedDate = new Date($('#datepicker').val()); */
        $.ajax({
			method: "POST",
			url: "revTimeList",
			data: {cName:'뱀부 하우스', rsDate:getFormatDate(date)},
			success: function(data){
				$('#time_list li.item').remove();
				$(data).each(function(){
					var date = new Date(this.rsDate);
					var hour = date.getHours();
					var minute = date.getMinutes();
					var all = apm(hour)+' '+getHour(hour)+':'+getMinute(minute);
					$('#time_list').append('<li class="item"><a href="javascript:;" class="anchor"><span>'+all+'</span></a></li>');
				});        				
			}
		});
       	$('#reservationdate').text($.datepicker.formatDate('m.d.', date)+'('+dayOfName($.datepicker.formatDate('DD', date))+')');
       	date.setDate(date.getDate()+(companydata[0].period-1));
      	$('#datepicker').datepicker('option', 'maxDate', date);
      	$('.ui-datepicker').css({"margin":"0 auto"});
      	$('#datepicker').hide();
      	$('#reservationtime').text('시간을 선택해 주세요');
		$('#reservationnum').text('인원을 선택해 주세요');
		
      	
		$('#bg_overlay').fadeIn(180);
		$('#wrap').fadeIn(180);
		$('#bg_content_wrap').scrollTop(0);
	});
	
	$(document).on('mouseenter', '#bg_wrap', function(){
    	mouse_is_inside=true;
    }).on('mouseleave', '#bg_wrap', function(){
    	mouse_is_inside=false;
    });
	
	$(document).on('click', '#wrap', function(){
		if(!mouse_is_inside){
			$('#bg_overlay').fadeOut(180);
			$('#wrap').fadeOut(180);
		}
	});
	
	$('.allclose').click(function(){
		$('#bg_overlay').fadeOut(180);
		$('#wrap').fadeOut(180);
	})
	
	$('.toclose').click(function(){
		$('.top_info').fadeOut(180);
	})
	
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
		if($(this).attr('id') == 'anum'){
			if($('#reservationtime').text() == '시간을 선택해 주세요'){
				$('.top_info').show();
				if(timer != null)
					clearTimeout(timer);
				timer = setTimeout(function() {
					$('.top_info').fadeOut(180);
				}, 1800); 
			} else
				$(this).next('.select_box').show();
		} else
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
	
	$(document).on('click', '#time_list li.item', function(){
		var date = new Date($('#datepicker').val());
		date.setHours(timeSplit($(this).text(), 'hour'));
		date.setMinutes(timeSplit($(this).text(), 'minutes'));
		date = getFormatDate(date);
		
		$.ajax({
			method: "POST",
			url: "revTimeView",
			data: {cName:'뱀부 하우스', rsDate:date},
			success: function(data){
				$('#num_list li.item').remove();
				var min = companydata[0].revMin;
				var max = companydata[0].revMax;
				var revPeople = data.revPeople;
				for(i=min; i<=max; i++){
					if(i > revPeople)
						break;
					$('#num_list').append('<li class="item"><a href="javascript:;" class="anchor"><span>'+i+'명'+'</span></a></li>');
				}
				//alert(new Date(data.rsDate));
			}
		});
		var list = $(this).closest('.select_list').find('.item');
		list.each(function(){
			$(this).removeClass('selected');
		});
		$(this).addClass('selected');
		$(this).closest('.select_box').hide();
		$('#reservationtime').text($(this).find('span').text());
	});
	
	function timeSplit(time, kind){
		time = time.split(' ');
		var apm = time[0];
		var hourmin = time[1].split(':');
		var hour = hourmin[0];
		var minutes = hourmin[1];
		if(apm == '오후')
			if(hour != 12)
				hour = parseInt(hour) + 12;
		if(kind == 'hour')
			return hour;
		else if(kind == 'minutes')
			return minutes;
	}
	
	function getFormatDate(date){
		var year = date.getFullYear();
		var month = (1 + date.getMonth());            
		month = month >= 10 ? month : '0' + month;  
		var day = date.getDate();                    
		day = day >= 10 ? day : '0' + day;      
		var hour = date.getHours();
		var minutes = date.getMinutes();
		minutes = minutes >= 10 ? minutes : '0' + minutes; 
		return  year + '-' + month + '-' + day + ' ' + hour + ':' + minutes;
	}
	
	$(document).on('click', '#num_list li.item', function(){
		var list = $(this).closest('.select_list').find('.item');
		list.each(function(){
			$(this).removeClass('selected');
		});
		$(this).addClass('selected');
		$(this).closest('.select_box').hide();
		$('#reservationnum').text($(this).find('span').text());
		var all = $('#reservationdate').text() + ', ' + $('#reservationtime').text() + ', ' 
			+ $('#reservationnum').text();
		$('.inline_control p').text(all);
	});
	
	$('#seller').click(function(){
		var i = $(this).find('i');
		if(i.hasClass('fa-angle-up')){
			i.removeClass('fa-angle-up');
			i.addClass('fa-angle-down');
			$('.owner').hide();
		} else if(i.hasClass('fa-angle-down')){
			i.removeClass('fa-angle-down');
			i.addClass('fa-angle-up');
			$('.owner').css('display', 'table');
		}
	});
	
	function checkBox(el){
		var item_checkbox = $(el).closest('.item_checkbox');
		var checkbox = item_checkbox.find('input[type="checkbox"]');
		checkbox.each(function(){
			if(el != this)
			this.checked = false;
		});
	}
	
	$('.bk_btn').click(function(){
		var addinfo = companydata[0].addInfo;
		var arr = addinfo.split('&');
		var r_arr;
		$(arr).each(function(){
			var titleinfo = this.split('*')[0];
			var contents = this.split('*')[1];
			var kind = titleinfo.split('/')[2];
			kind = kind.split('(')[0];
			title = titleinfo.split('/')[1];
			var c = '';
			
			if(kind == 'text'){
				c = $('input[class="'+title+'"]').val();
			} else if(kind == 'checkbox'){
				var c_arr = contents.split('/');
				$(c_arr).each(function(){
					if($('input[value="'+this+'"]').is(":checked") == true)
						if(c == '')
							c = this;
						else
							c += ',' + this;
				});
			}
			if(r_arr == null)
				r_arr = titleinfo + '*' + c;
			else
				r_arr += '&' + titleinfo + '*' + c;
		});
		$('input[name="cName"]').val('뱀부 하우스');
		$('input[name="id"]').val('jsc18');
		$('input[name="revTerm"]').val(r_arr);
		
		var date = new Date($('#datepicker').val());
		var time = $('#reservationtime').text();
		date.setHours(timeSplit(time, 'hour'));
		date.setMinutes(timeSplit(time, 'minutes'));
		date = getFormatDate(date);
		$('input[name="revDate"]').val(date);
		$('input[name="revPeople"]').val($('#reservationnum').text().substr(0,1));
		
		$('#frm').ajaxForm({
			url: 'reservationWrite',
			type: 'POST',
			success: function(data){
				if(data == 0)
					alert('예약되지 않았습니다. 다시 시도해주세요.')
				else if(data == 1)
					alert('예약되었습니다. 감사합니다.')
				else if(data == 2)
					alert('이미 예약되어있습니다.');
				$('#bg_overlay').fadeOut(180);
				$('#wrap').fadeOut(180);
			}
		});
		
		$('#frm').submit();
	});
</script>
</html>