<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<link rel="stylesheet" type="text/css" href="resources/css/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="resources/css/fullcalendar.print.css" media="print">
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css">
<script type="text/javascript" src="resources/js/moment.min.js"></script>
<script type="text/javascript" src="resources/js/fullcalendar.js"></script>
<script type="text/javascript" src="resources/js/ko.js"></script>
<script type="text/javascript" src="resources/js/sweetalert.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
        $("#calendar").fullCalendar({
              defaultDate : "2016-05-12"
            , validRange: {
                 start: '2016-05-18',
                 end: '2016-06-02' 
              }
        	, lang: "ko"
            , editable : true
            , eventLimit : true
            /* , selectable : true */
            , height: 620
            , header: { // layout header
                left: 'prev', 
                center: 'title',
                right: 'next'
              },
              views: { // set the view button names
               listWeek: {buttonText: 'list week'}
              }
            , /* events: [
                {
                      title : "All Day Event"
                    , start : "2016-05-01"
                },
                {
                      title : "Long Event"
                    , start : "2016-05-07"
                    , end : "2016-05-10"
                },
                {
                      id : 999
                    , title : "Repeating Event"
                    , start : "2016-05-09T16:00:00"
                },
                {
                      id : 999
                    , title : "Repeating Event"
                    , start : "2016-05-16T16:00:00"
                },
                {
                      title : "Conference"
                    , start : "2016-05-11"
                    , end : "2016-05-13"
                },
                {
                      title : "Meeting"
                    , start : "2016-05-12T10:30:00"
                    , end : "2016-05-12T12:30:00"
                },
                {
                      title : "Lunch"
                    , start : "2016-05-12T12:00:00"
                },
                {
                      title : "Meeting"
                    , start : "2016-05-12T14:30:00"
                },
                {
                      title : "Happy Hour"
                    , start : "2016-05-12T17:30:00"
                },
                {
                      title : "Dinner"
                    , start : "2016-05-12T20:00:00"
                },
                {
                      title : "Birthday Party"
                    , start : "2016-05-13T07:00:00"
                },
                {
                      title : "Click for Google"
                    , url : "http://google.com/"
                    , start : "2016-05-28"
                }
            ], */
            dayRender: function(date, cell){
            	/* var start = new Date(2016,5,18);
            	var end = new Date(2016,5,24); */
            	/* date.setDate(date.getDate() - 1); */
            	/* alert(date.toLocaleDateString()); */
            	/* date = new Date(date);
            	var year = date.getFullYear();
            	var month = date.getMonth()+1;
            	var day = date.getDate();
            	date = new Date(year,month,day);
            	if(date >= start && date <= end){
            		cell.css("background-color", "#d7d7d7"); 
            		cell.css("opacity", "0.3");
           			$(cell).addClass('disabled');
            	} */
            },
            select: function(date){
            	//alert(date);
            	//var check = confirm('해당 날짜를 모임 날짜로 투표하겠습니까?');
            },
            eventClick: function(calEvent, jsEvent, view) {
                var title = prompt('Event Title:', calEvent.title, { buttons: { Ok: true, Cancel: false} });

                if (title){
                    calEvent.title = title;
                    $('#calendar').fullCalendar('updateEvent',calEvent);
                }
      		},
      		eventRender: function (event, element) {

      		},
      		dayClick: function(date, jsEvent, view) {
			
      	        /* alert('Clicked on: ' + date.format());

      	        alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY);

      	        alert('Current view: ' + view.name);

      	        // change the day's background color just for fun
      	        $(this).css('background-color', 'red'); */
      			/* var check = confirm(date.format()+'를 모임 날짜로 투표하겠습니까?');
      	        if(check)
      				$('.fc-widget-content[data-date='+date.format()+']').css('background-color', 'red'); */
      			if($('#timebox').css('display') == 'block')
      				$('#timebox').hide();
	      	    var pos = $(this).offset();
      			$('#timebox').css('top', (pos.top + 28) + 'px');    // 레이어 위치 지정
      			$('#timebox').css('left', (pos.left + 28) + 'px');
      			$('#timebox').fadeIn(350);
      			$('#timebox').focus();
      	    },
	      	viewRender: function (view, element) {
	      		$('.fc-widget-content[data-date='+'2016-06-01'+']').css('background-color', 'red');
	      	}
        });
    });
</script>
<style type="text/css">
	#wrap{
		width: 700px;
		margin: 0 auto;
	}
	
    body {
        margin :40px 10px;
        padding : 0;
        font-family : "Lucida Grande", Helvetica, Arial, Verdana,sans-serif;
        font-size : 14px;
    }
    
    .modal-body{
    	padding: 10px;
    }
    
    #calendar {
       	width: 680px;
       	margin: 0 auto;
    }
    
    .fc-center h2{
    	font-size: 1.5em;
    	font-weight: bold;
    	line-height: normal;
    }
    
    .fc-head{
    	line-height: normal;
    }
    
	.header_tab{
		width: 680px;
		margin: 0 auto;
		padding: 15px 0px;
		position: relative;
		border: 0;
	}

	.header_tab:after{
		content:'';
		display: block;
		position: absolute;
		width: 100%;
		height: 1px;
		background: #808080;
		bottom: 15px;
		z-index:0;
	}

	.header_tab ul{
		border: 0;
	}

	.header_tab li{
		margin: 0 0 0 -1px;
	}

	.header_tab li.active a{
		color: #363636;
		font-weight: 600;
		border-color: #808080;
		border-left: 1px solid #808080 !important;
		border-right: 1px solid #808080 !important;
		border-top: 1px solid #808080 !important;
		border-bottom: 0px;
		background: #fff;
		z-index: 1;
	}
	
	.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
	    color: #555;
	    cursor: default;
	    background-color: #fff;
	    border: 0;
	    border-bottom-color: transparent;
	}

	.header_tab a{
		border-radius: 0;
		color: #a8a8a8;
		font-size: 14px;
		padding-top: 8px;
		padding-bottom: 8px;
	}
	
	.header_tab li a{
		border-left: 1px solid #dddddd;
		border-right: 1px solid #dddddd;
		border-top: 1px solid #dddddd;
		border-bottom: 0px;
		margin: 0;
		z-index: 0;
	}
	
	.header_tab li:first-child{
		margin: 0 0 0 0;
	}
	
	#timebox{
		position: absolute;
    	display: none;
   		width: 350px;
    	height: 250px;
    	background-color: #fff;
   	    border-radius: 20px;
   	    box-shadow: 0px 0px 15px 0px #606060;
   	    z-index: 2;
	}
</style>
</head>
<body>
	<div id="wrap">
		<div class="header_tab">
     	      <ul class="nav nav-tabs">
     	         <li class="active">
     	         	<a href="#date" data-toggle="tab" aria-expanded="false">일정투표</a>
     	         </li>
     	         <li class="">
     	         	<a href="#place" data-toggle="tab" aria-expanded="true">장소투표</a>
     	         </li>
     	         <li class="">
     	         	<a href="#board" data-toggle="tab" aria-expanded="false">게시판</a>
     	         </li>
     	      </ul>
     	</div>
		<div class="modal-body">
			<div class="tab-content">
				<div class="tab-pane fade in active " id="date">
					<div id="calendar"></div>
				</div>
				<div class="tab-pane fade in" id="place">
					<div>테스트</div>
				</div>
				<div class="tab-pane fade in" id="board">
					<div>테스트</div>
				</div>
			</div>
		</div>
	</div>
	<div id="timebox">
		
	</div>
	<button id="test">날짜선택완료</button>
</body>
<script type="text/javascript">
	$('#test').click(function(){
		swal({
			  title: "일정 선택",
			  text: "날짜를 최종 선택하시겠습니까?",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#DD6B55",
			  confirmButtonText: "선택",
			  cancelButtonText: "취소",
			  closeOnConfirm: false,
			  allowOutsideClick: true
			},
			function(){
			  swal("선택", "선택이 완료되었습니다.", "success");
			}
		);
	});
	
	var mouse_is_inside = false;
    
    $('.fc-body').hover(function(){
    	mouse_is_inside=true;
    }, function(){
    	mouse_is_inside=false;
    });

    $(document).mouseup(function(){ 
        if(!mouse_is_inside) $('#timebox').hide();
    });
</script>
</html>