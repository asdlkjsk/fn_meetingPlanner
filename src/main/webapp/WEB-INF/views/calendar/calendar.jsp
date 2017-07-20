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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/fullcalendar.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/fullcalendar.print.css" media="print">
<link rel="stylesheet" type="text/css" href="resources/css/sweetalert.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/select-theme-dark.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/css-buttons.css"/>
<link rel="stylesheet" type="text/css" href="resources/css/place.css"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/moment.min.js"></script>
<script type="text/javascript" src="resources/js/fullcalendar.js"></script>
<script type="text/javascript" src="resources/js/ko.js"></script>
<script type="text/javascript" src="resources/js/sweetalert.min.js"></script>
<script type="text/javascript" src="resources/js/select.js"></script>
<script type="text/javascript">
	var dateformat;
	var selectedDate;
	$(document).ready(function() {
        $("#calendar").fullCalendar({
              defaultDate : "2016-05-18"
            , validRange: {
                 start: '2016-05-18',
                 end: '2016-06-12' 
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
      			dateformat = date.format();
     			if($('#timebox').css('display') == 'block')
      				$('#timebox').hide();
	      	    var pos = $(this).offset();
      			$('#timebox').css('top', (pos.top + 28) + 'px');    // 레이어 위치 지정
      			$('#timebox').css('left', (pos.left + 28) + 'px');
      			$('#timebox').fadeIn();
      			$('#timebox').focus();
      	    },
	      	viewRender: function (view, element) {
	      		var datebg = $('.fc-widget-content[data-date='+selectedDate+']');
	      		var fcbg = datebg.closest('.fc-bg');
	      		var td = fcbg.next('.fc-content-skeleton').find('thead tr td:nth-child('+(datebg.index()+1)+')');
	      		td.css('color', 'white');
	      		$('.fc-widget-content[data-date='+selectedDate+']').css('background-color', '#31708f')
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
   	    padding: 15px;
	}
	
	.select{
		width: 320px;
		z-index: 2;
	}
	
	.select-target{
		width: 320px;
	}
	
	.select-content{
		max-width: none !important;
		max-height: 140px !important;
	}
	
	#attend{
	    display: block;
    	font-weight: bold;
    	text-align: center;
    	margin: 20px 0;
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
				<div class="tab-pane fade in active" id="date">
					<div id="calendar"></div>
				</div>
				<div class="tab-pane fade in active" id="place">
					<div class="map_wrap">
						<div id="map"
							style="width: 100%; height: 620px; position: relative; overflow: hidden;"></div>

						<div id="menu_wrap" class="bg_white">
							<div class="option">
								<div>
									<form onsubmit="searchPlaces(); return false;">
										키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15">
										<button type="submit">검색하기</button>
									</form>
								</div>
							</div>
							<hr>
							<ul id="placesList"></ul>
							<div id="pagination"></div>
						</div>
					</div>
					<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=bfe1aaa6425532e71b90eb50fa254710&libraries=services"></script>
					<script type="text/javascript">
						// 마커를 담을 배열입니다
						var markers = [];
						var container = document.getElementById('map');
						var options = {
							center: new daum.maps.LatLng(33.450701, 126.570667),
							level: 3
						};
						var map = new daum.maps.Map(container, options);
						
						// 장소 검색 객체를 생성합니다
						var ps = new daum.maps.services.Places();  

						// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
						var infowindow = new daum.maps.InfoWindow({zIndex:1});

						// 키워드로 장소를 검색합니다
						searchPlaces();

						// 키워드 검색을 요청하는 함수입니다
						function searchPlaces() {

						    var keyword = document.getElementById('keyword').value;

						    if (!keyword.replace(/^\s+|\s+$/g, '')) {
						        alert('키워드를 입력해주세요!');
						        return false;
						    }

						    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
						    ps.keywordSearch( keyword, placesSearchCB); 
						}

						// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
						function placesSearchCB(status, data, pagination) {
						    if (status === daum.maps.services.Status.OK) {

						        // 정상적으로 검색이 완료됐으면
						        // 검색 목록과 마커를 표출합니다
						        displayPlaces(data.places);

						        // 페이지 번호를 표출합니다
						        displayPagination(pagination);

						    } else if (status === daum.maps.services.Status.ZERO_RESULT) {

						        alert('검색 결과가 존재하지 않습니다.');
						        return;

						    } else if (status === daum.maps.services.Status.ERROR) {

						        alert('검색 결과 중 오류가 발생했습니다.');
						        return;

						    }
						}

						// 검색 결과 목록과 마커를 표출하는 함수입니다
						function displayPlaces(places) {

						    var listEl = document.getElementById('placesList'), 
						    menuEl = document.getElementById('menu_wrap'),
						    fragment = document.createDocumentFragment(), 
						    bounds = new daum.maps.LatLngBounds(), 
						    listStr = '';
						    
						    // 검색 결과 목록에 추가된 항목들을 제거합니다
						    removeAllChildNods(listEl);

						    // 지도에 표시되고 있는 마커를 제거합니다
						    removeMarker();
						    
						    for ( var i=0; i<places.length; i++ ) {

						        // 마커를 생성하고 지도에 표시합니다
						        var placePosition = new daum.maps.LatLng(places[i].latitude, places[i].longitude),
						            marker = addMarker(placePosition, i), 
						            itemEl = getListItem(i, places[i], marker); // 검색 결과 항목 Element를 생성합니다

						        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
						        // LatLngBounds 객체에 좌표를 추가합니다
						        bounds.extend(placePosition);

						        // 마커와 검색결과 항목에 mouseover 했을때
						        // 해당 장소에 인포윈도우에 장소명을 표시합니다
						        // mouseout 했을 때는 인포윈도우를 닫습니다
						        (function(marker, title) {
						            daum.maps.event.addListener(marker, 'mouseover', function() {
						                displayInfowindow(marker, title);
						            });

						            daum.maps.event.addListener(marker, 'mouseout', function() {
						                infowindow.close();
						            });

						            itemEl.onmouseover =  function () {
						                displayInfowindow(marker, title);
						            };

						            itemEl.onmouseout =  function () {
						                infowindow.close();
						            };
						        })(marker, places[i].title);

						        fragment.appendChild(itemEl);
						    }

						    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
						    listEl.appendChild(fragment);
						    menuEl.scrollTop = 0;

						    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
						    map.setBounds(bounds);
						}

						// 검색결과 항목을 Element로 반환하는 함수입니다
						function getListItem(index, places) {

						    var el = document.createElement('li'),
						    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
						                '<div class="info">' +
						                '   <h5>' + places.title + '</h5>';

						    if (places.newAddress) {
						        itemStr += '    <span>' + places.newAddress + '</span>' +
						                    '   <span class="jibun gray">' +  places.address  + '</span>';
						    } else {
						        itemStr += '    <span>' +  places.address  + '</span>'; 
						    }
						                 
						      itemStr += '  <span class="tel">' + places.phone  + '</span>' +
						                '</div>';           

						    el.innerHTML = itemStr;
						    el.className = 'item';

						    return el;
						}

						// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
						function addMarker(position, idx, title) {
						    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
						        imageSize = new daum.maps.Size(36, 37),  // 마커 이미지의 크기
						        imgOptions =  {
						            spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
						            spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
						            offset: new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
						        },
						        markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
						            marker = new daum.maps.Marker({
						            position: position, // 마커의 위치
						            image: markerImage 
						        });

						    marker.setMap(map); // 지도 위에 마커를 표출합니다
						    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

						    return marker;
						}

						// 지도 위에 표시되고 있는 마커를 모두 제거합니다
						function removeMarker() {
						    for ( var i = 0; i < markers.length; i++ ) {
						        markers[i].setMap(null);
						    }   
						    markers = [];
						}

						// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
						function displayPagination(pagination) {
						    var paginationEl = document.getElementById('pagination'),
						        fragment = document.createDocumentFragment(),
						        i; 

						    // 기존에 추가된 페이지번호를 삭제합니다
						    while (paginationEl.hasChildNodes()) {
						        paginationEl.removeChild (paginationEl.lastChild);
						    }

						    for (i=1; i<=pagination.last; i++) {
						        var el = document.createElement('a');
						        el.href = "#";
						        el.innerHTML = i;

						        if (i===pagination.current) {
						            el.className = 'on';
						        } else {
						            el.onclick = (function(i) {
						                return function() {
						                    pagination.gotoPage(i);
						                }
						            })(i);
						        }

						        fragment.appendChild(el);
						    }
						    paginationEl.appendChild(fragment);
						}

						// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
						// 인포윈도우에 장소명을 표시합니다
						function displayInfowindow(marker, title) {
						    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

						    infowindow.setContent(content);
						    infowindow.open(map, marker);
						}

						 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
						function removeAllChildNods(el) {   
						    while (el.hasChildNodes()) {
						        el.removeChild (el.lastChild);
						    }
						}
						$('.tab-content div:nth-child(2)').removeClass('active');
						$('.tab-content div:nth-child(3)').removeClass('active');
					</script>
				</div>
				<div class="tab-pane fade in active" id="board">
					<div>테스트</div>
				</div>
			</div>
		</div>
	</div>
	<div id="timebox">
		<span id="attend">참석할 시간을 선택해주세요.</span>
		<select class="demo">
			<option value="morning">아침</option>
			<option value="midday">점심</option>
			<option value="daytime">낮</option>
			<option value="evening">저녁</option>
			<option value="night">밤</option>
		</select>
		<div style="margin-top: 60px; text-align: center;">
			<button class="button blue">OK</button>
			<button class="button red" style="margin-left: 30px;">Cancel</button>
		</div>
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
    
    $('#timebox').hover(function(){
    	mouse_is_inside=true;
    }, function(){
    	mouse_is_inside=false;
    });
    
    $(document).on('mouseenter', '.select-option', function(){
    	mouse_is_inside=true;
    }).on('mouseleave', '.select-option', function(){
    	mouse_is_inside=false;
    });

    $(document).mouseup(function(){ 
        if(!mouse_is_inside) $('#timebox').fadeOut(200);
    });
    
    $('.blue').click(function(){
    	selectedDate = dateformat;
    	var datebg = $('.fc-widget-content[data-date='+dateformat+']');
    	var fcbg = datebg.closest('.fc-day-grid').find('.fc-bg');
    	fcbg.each(function(){
    		var datetd = $(this).next('.fc-content-skeleton').find('td');
    		datetd.each(function(){
    			if($(this).is('[data-date]'))
        			$(this).css('color', '#333');
    		});
    		var td = $(this).find('td');
    		td.each(function(){
    			if($(this).is('[data-date]'))
        			$(this).css('background-color', 'white');
    		});
    	});
    	var date = datebg.closest('.fc-bg').next('.fc-content-skeleton').find('thead tr td:nth-child('+(datebg.index()+1)+')');
		date.css('color', 'white');
    	datebg.css('background-color', '#31708f');
    	$('#timebox').fadeOut(200);
    });
    
    $('.red').click(function(){
    	$('#timebox').fadeOut(200);
    });
    
    $('select.demo').each(function(){
    	new Select({
	    	el: this,
	    	className: 'select-theme-dark', // or select-theme-chosen
	    	useNative: false, // By default, select fallsback to opening the native browser select on touch devices which are less than or equal to 640px in either height or width.
	    	alignToHighlighted: 'never' // Select has an option called alignToHighlighted which allows you to change whether the drop is positioned like a real select element (with the currently selected option over the element) or like a canonical dropdown menu.
    	});
   	});
</script>
</html>