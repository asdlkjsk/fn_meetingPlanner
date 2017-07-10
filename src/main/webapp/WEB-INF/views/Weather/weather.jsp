<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="<c:url value='resources/css/reset.css'/>">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
body{
    background-color: #fff;
    color: #666;
    font-size: 12px;
    font-family: '돋움',Dotum,Helvetica,sans-serif;
}

.zone_select2 {
    position: relative;
    z-index: 99;
    width: 593px;
    height: 47px;
    margin: 0;
    margin-bottom: 25px;
    background: url(http://static.naver.com/weather/images/bg_zone_sel2.gif) no-repeat 0 0;
    line-height: 13px;
}

.zone_select2 .z_select {
    padding: 13px 0 0 14px;
}

.zone_select2 .z_select .st {
    float: left;
    padding: 5px 5px 0 0;
    color: #333;
    font-weight: bold;
    letter-spacing: -1px;
}

.z_select .ipt {
    display: inline;
    float: left;
    position: relative;
    margin: 0 0 0 4px;
    overflow: hidden;
}

.z_select .on .input_zone {
    font-weight: bold;
    letter-spacing: -1px;
}

.input_zone {
    display: block;
    height: auto;
    padding: 4px 15px 3px 4px;
    _padding-bottom: 2px;
    border: 1px solid #ccc;
    background: #fff;
    color: #333;
    text-decoration: none;
}

.input_zone:hover {
    text-decoration: none;
}

a:hover {
    color: #666;
    text-decoration: underline;
}

a:link, a:visited, a:active {
    color: #666;
    /* text-decoration: none; */
}

.z_select .ipt span.show {
    display: block;
    position: absolute;
    right: 1px;
    top: 2px;
    width: 17px;
    height: 17px;
    background: url(http://static.naver.com/weather/images/sel_arr.gif) no-repeat;
    cursor: pointer;
}

div.z_select .layer_popup, .remove_item {
    display: none;
}

.layer_popup {
    position: absolute;
    z-index: 100;
    overflow: visible;
}

.layer_popup .mini_content {
    overflow: hidden;
    position: relative;
    z-index: 2;
    border: 1px solid #888d95;
    background: #ffffff;
}

.layer_popup .mini_body {
    overflow: hidden;
    width: 292px;
    padding: 13px 11px 5px 5px;
}

.layer_popup .mini_body ul {
    overflow: hidden;
}

.layer_popup .mini_body ul.sel1 li {
    width: 88px;
    padding-left: 7px;
}

.layer_popup .mini_body ul.sel2 li {
    width: 95px;
}

.layer_popup .mini_body ul li {
    float: left;
    height: 18px;
    font-size: 11px;
    text-align: left;
}

.layer_popup .mini_body ul li a:hover {
    color: #339900;
    font-weight: bold;
    letter-spacing: -1px;
}

.layer_popup .mini_close {
    position: absolute;
    top: 3px;
    right: 2px;
}

.layer_popup .shadow {
    position: absolute;
    width: 100%;
    height: 100%;
    overflow: visible;
    z-index: 1;
    _display: none;
}

.layer_popup .shadow1 {
    left: 3px;
    top: 3px;
    background: url(http://static.naver.com/common/layer/shadow1.png);
}

.layer_popup .shadow2 {
    left: 2px;
    top: 2px;
    background: url(http://static.naver.com/common/layer/shadow2.png);
}

.layer_popup .shadow3 {
    left: 1px;
    top: 1px;
    background: url(http://static.naver.com/common/layer/shadow3.png);
}

.zone_select2 .btn_inquire {
    margin-left: 4px;
    top: 13px;
}


/* 날씨  */
.weather_wrap{
	border-bottom: 1px solid #f8f8f8;	
	text-align: center;
	width: 275px;
	margin: 0 auto;
	margin-top: 100px;
}

.weather_wrap ul{
	border: 1px solid #d9d9d9;
}

.weather_wrap li{
	width: 100%;
}

.weather_img{
	border: 0;
	vertical-align: top;
	display: inline-block;
}

.info{
	line-height: normal;
	display: inline-block;
}

.info h5{
	padding: 0 0 3px;
    font-size: 12px;
    font-weight: bold;
    color: #f60;
    letter-spacing: -1px;
}

.info h5 span{
	font-family: Tahoma, sans-serif;
	letter-spacing: 0;
}

.info em{
	display: inline-block;
    margin-bottom: 4px;
    font-family: tahoma,sans-serif;
    font-size: 24px;
    font-weight: bold;
    color: #333;
    letter-spacing: -1px;
}

.info em span{
	display: inline-block;
    overflow: hidden;
    width: 16px;
    height: 19px;
    margin-left: 2px;
    background: url(resources/images/bg_dgr.gif) 0 0 no-repeat;
    line-height: 999px;
    vertical-align: 0;
}

.info em strong{
   	padding-left: 7px;
    font-size: 12px;
    font-weight: normal;
    vertical-align: 1px;
}

.info p{
	font-size: 11px;
    line-height: 15px;
    color: #636563;
    padding: 0;
    letter-spacing: -1px;
}

.info p strong{
	padding: 0 1px 0 3px;
    font-family: tahoma,sans-serif;
    font-size: 11px;
    letter-spacing: 0;
    font-weight: bold;
}
.bar{
	padding: 0 3px 0 2px;
    color: #ddd;
}
</style>
</head>
<body>
	<div class="zone_select2">
		<div class="z_select">
			<p class="st">지역선택</p>
			<div id="region_larea_header" class="ipt"><!-- 클릭(선택)시 클래스 'on' 추가 -->
				<a href="javascript:;" class="input_zone" style="width:61px">시/도</a><span class="show"></span>
			</div>
			<div id="region_marea_header" class="ipt" style="display: block;">
				<a href="javascript:;" class="input_zone" style="width:85px">시/군/구</a><span class="show"></span>
			</div>
			<div id="region_sarea_header" class="ipt">
				<a href="javascript:;" class="input_zone" style="width:93px">동/읍/면</a><span class="show"></span>
			</div>
			<!-- Layer -->
			<div id="region_larea_list_wrapper" class="layer_popup dropdown" style="left: 72px; top: 35px; display: none;">
				<div class="mini_content">
				<!-- Layer Content -->
					<div class="mini_body">
						<!-- 광역시/도 -->
						<ul id="region_larea_list" class="sel1"></ul>
					</div>
					<a href="javascript:;" class="mini_close"><img src="https://ssl.pstatic.net/static/weather/images/btn_x.gif" alt="레이어닫기" width="15" height="14"></a>
				</div>
				<span class="shadow shadow1"></span><span class="shadow shadow2"></span><span class="shadow shadow3"></span>
			</div>
			<div id="region_marea_list_wrapper" class="layer_popup dropdown" style="left: 72px; top: 35px; display: none;">
				<div class="mini_content">
					<!-- Layer Content -->
					<div class="mini_body">
					<!-- 시/군/구 -->
						<div class="mini_scroll">
							<ul id="region_marea_list" class="sel2"></ul>
						</div>
					</div>
					<a href="javascript:;" class="mini_close"><img src="https://ssl.pstatic.net/static/weather/images/btn_x.gif" alt="레이어닫기" width="15" height="14"></a>
				</div>
				<span class="shadow shadow1"></span><span class="shadow shadow2"></span><span class="shadow shadow3"></span>
			</div>
			<div id="region_sarea_list_wrapper" class="layer_popup dropdown" style="left: 72px; top: 35px; display: none;">
				<div class="mini_content">
					<!-- Layer Content -->
					<div class="mini_body">
						<!-- 동/읍/면 -->
						<div class="mini_scroll">
							<ul id="region_sarea_list" class="sel2"></ul>
						</div>
					</div>
					<a href="javascript:;" class="mini_close"><img src="https://ssl.pstatic.net/static/weather/images/btn_x.gif" alt="레이어닫기" width="15" height="14"></a>
				</div>
				<span class="shadow shadow1"></span><span class="shadow shadow2"></span><span class="shadow shadow3"></span>
			</div>
		</div>
		<span class="btn_inquire"><a href="javascript:;"><img src="https://ssl.pstatic.net/static/weather/images/btn_search.gif" width="35" height="22" alt="동네별 날씨 지역 선택 조회"></a></span>
		<!-- <span class="btn_save"><a href="javascript:concernRgnSave();" id="nhn_ui_submit"><img src="https://ssl.pstatic.net/static/weather/images/btn_w_save.gif" width="110" height="22" alt="관심지역 날씨 저장"></a></span> -->
	</div>
			
	<div class="weather_wrap">
		<ul>
			<li>
				<img src="resources/images/mostly cloudy.gif" width="110" height="80" class="weather_img">
				<div class="info">
					<h5><span>22</span>시 현재</h5>
					<em>20<span>℃</span><strong>구름많음</strong></em>
					<p>어제 기온과 같음<span class="bar"> | </span>강수확률<strong>30</strong>%</p>
				</div>
			</li>
		</ul>
	</div>
	
<script type="text/javascript">

	//----------------------------------------------------------
	// 기상청 홈페이지에서 발췌한 변환 함수
	//
	// LCC DFS 좌표변환을 위한 기초 자료
	//
	var RE = 6371.00877; // 지구 반경(km)
	var GRID = 5.0; // 격자 간격(km)
	var SLAT1 = 30.0; // 투영 위도1(degree)
	var SLAT2 = 60.0; // 투영 위도2(degree)
	var OLON = 126.0; // 기준점 경도(degree)
	var OLAT = 38.0; // 기준점 위도(degree)
	var XO = 43; // 기준점 X좌표(GRID)
	var YO = 136; // 기1준점 Y좌표(GRID)

	//LCC DFS 좌표변환 ( code : 
	//         "toXY"(위경도->좌표, v1:위도, v2:경도), 
	//         "toLL"(좌표->위경도,v1:x, v2:y) )
	//
   
    function dfs_xy_conv(code, v1, v2, rs) {
        var DEGRAD = Math.PI / 180.0;
        var RADDEG = 180.0 / Math.PI;
       
        var re = RE / GRID;
        var slat1 = SLAT1 * DEGRAD;
        var slat2 = SLAT2 * DEGRAD;
        var olon = OLON * DEGRAD;
        var olat = OLAT * DEGRAD;
       
        var sn = Math.tan(Math.PI * 0.25 + slat2 * 0.5) / Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sn = Math.log(Math.cos(slat1) / Math.cos(slat2)) / Math.log(sn);
        var sf = Math.tan(Math.PI * 0.25 + slat1 * 0.5);
        sf = Math.pow(sf, sn) * Math.cos(slat1) / sn;
        var ro = Math.tan(Math.PI * 0.25 + olat * 0.5);
        ro = re * sf / Math.pow(ro, sn);
        //var rs = {};
		
        if(code == 'toXY'){
	        rs['lat'] = v1;
	        rs['lng'] = v2;
	        var ra = Math.tan(Math.PI * 0.25 + (v1) * DEGRAD * 0.5);
	        ra = re * sf / Math.pow(ra, sn);
	        var theta = v2 * DEGRAD - olon;
	        if (theta > Math.PI) theta -= 2.0 * Math.PI;
	        if (theta < -Math.PI) theta += 2.0 * Math.PI;
	        theta *= sn;
	        rs['x'] = Math.floor(ra * Math.sin(theta) + XO + 0.5);
	        rs['y'] = Math.floor(ro - ra * Math.cos(theta) + YO + 0.5);
        }
        else if(code == 'toLL'){
    	    rs['x'] = v1;
            rs['y'] = v2;
            var xn = v1 - XO;
            var yn = ro - v2 + YO;
            ra = Math.sqrt(xn * xn + yn * yn);
            if (sn < 0.0) - ra;
            var alat = Math.pow((re * sf / ra), (1.0 / sn));
            alat = 2.0 * Math.atan(alat) - Math.PI * 0.5;
           
            if (Math.abs(xn) <= 0.0) {
                theta = 0.0;
            }
            else {
                if (Math.abs(yn) <= 0.0) {
                    theta = Math.PI * 0.5;
                    if (xn < 0.0) - theta;
                }
                else theta = Math.atan2(xn, yn);
            }
            var alon = theta / sn + olon;
            rs['lat'] = alat * RADDEG;
            rs['lng'] = alon * RADDEG;
        }
        return rs;
    }
   
    function realTimeWeather(_nx, _ny) {
	    var today = new Date();
	    var week = new Array('일','월','화','수','목','금','토');
	    var year = today.getFullYear();
	    var month = today.getMonth()+1;
	    var day = today.getDate();
	    var hours = today.getHours();
	    var minutes = today.getMinutes();
	    
	    $('.info h5 span').html(hours);
	 
	    $('.weather-date').html(month +"월 " + day + "일 " + week[today.getDay()]+"요일");
	    /*
	     * 기상청 30분마다 발표
	     * 30분보다 작으면, 한시간 전 hours 값
	     */
	    if(minutes < 40){
	        hours = hours - 1;
	        if(hours < 0){
	            // 자정 이전은 전날로 계산
	            today.setDate(today.getDate() - 1);
	            day = today.getDate();
	            month = today.getMonth()+1;
	            year = today.getFullYear();
	            hours = 23;
	        }
	    }
	    
	    /* example
	     * 9시 -> 09시 변경 필요
	     */
	    
	    if(hours < 10) {
	        hours = '0'+hours;
	    }
	    if(month < 10) {
	        month = '0' + month;
	    }    
	    if(day < 10) {
	        day = '0' + day;
	    } 
	 
	    today = year+""+month+""+day;
	    
	    /* 좌표 */
	    /* var _nx = 61, 
	    _ny = 128, */
	    apikey = "iM9M1hAu2%2B1oPsCuLxmIBdYTlMT09RILXSt%2FnGIWpYysavoQ4nW0gZzjYP87%2FOGpmzrJdC8NQBfAXzdlKzmx1Q%3D%3D";    
	    ForecastGribURL = "http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastGrib";
	    ForecastGribURL += "?ServiceKey=" + apikey;
	    ForecastGribURL += "&base_date=" + today;
	    ForecastGribURL += "&base_time=" + hours + "00";
	    ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
	    ForecastGribURL += "&pageNo=1&numOfRows=10";
	    ForecastGribURL += "&_type=json";

	    /* $.ajaxPrefilter(function(options, orig, jqXHR) {
	    	if ( options.crossDomain ) {
	    	    options.url = "http://example.com/proxy/" + encodeURIComponent( options.url );
	    	    options.crossDomain = false;
    	  	}
	    }); */
		var test = $.ajax({
		method: 'GET',
		dataType: 'json',
	    url: 'resources/temp/proxy.jsp',
	    data: {url:ForecastGribURL}
		}).done(function(data){
	    	/* alert($.parseJSON(test.responseText)); */
			var text = test.responseText;
		    text = text.replace(/(<([^>]+)>)/ig,""); //HTML 태그 모두 공백으로 대체
			text = '[' + text + ']';
		    //alert(text);
		    var json = $.parseJSON(text);
		    var sky = json[0].response.body.items.item[4].obsrValue;
		    var temper = json[0].response.body.items.item[5].obsrValue;
		   	$('.info em').html(temper+'<span>℃</span><strong>'+checkSky(sky)+'</strong>');
	    });
	    
	    //------------------------------------------------------------------------------------
	    
	    today = new Date();
	    today.setDate(today.getDate() - 1);
	    year = today.getFullYear();
	    month = today.getMonth()+1;
	    day = today.getDate();
	    hours = today.getHours();
	    minutes = today.getMinutes();
	    
		if(minutes < 40){
	        hours = hours - 1;
	        if(hours < 0){
	            today.setDate(today.getDate() - 1);
	            day = today.getDate();
	            month = today.getMonth()+1;
	            year = today.getFullYear();
	            hours = 23;
	        }
	    }
	    
	    if(hours < 10) {
	        hours = '0'+hours;
	    }
	    if(month < 10) {
	        month = '0' + month;
	    }    
	    if(day < 10) {
	        day = '0' + day;
	    } 
	 
	    today = year+""+month+""+day;
	    
	    /* var _nx = 61, 
	    _ny = 128, */
	    apikey = "iM9M1hAu2%2B1oPsCuLxmIBdYTlMT09RILXSt%2FnGIWpYysavoQ4nW0gZzjYP87%2FOGpmzrJdC8NQBfAXzdlKzmx1Q%3D%3D";    
	    ForecastGribURL = "http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastGrib";
	    ForecastGribURL += "?ServiceKey=" + apikey;
	    ForecastGribURL += "&base_date=" + today;
	    ForecastGribURL += "&base_time=" + hours + "00";
	    ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
	    ForecastGribURL += "&pageNo=1&numOfRows=10";
	    ForecastGribURL += "&_type=json";

	    $.ajax({
	    	type: 'GET',
	    	dataType: 'json',
	    	url: 'resources/temp/proxy.jsp',
	    	data: {url:ForecastGribURL},
	    	success: function(data){
	    		//alert(data.response.header.resultMsg);	
	    	}
	    });
	    
	    today = new Date();
	    year = today.getFullYear();
	    month = today.getMonth()+1;
	    day = today.getDate();
	    hours = today.getHours();
	    minutes = today.getMinutes();
	    if(minutes < 10)
	    	minutes = '0' + minutes;
	    if(hours == 0)
	    	var all = minutes;
	    else
	    	var all = hours + '' + minutes;

	    if (all >= 430 && all <= 600)
	    	hours = 02;
	    else if(all > 600 && all <= 730)
	    	hours = 02;
	    else if(all > 730 && all <= 900)
	    	hours = 05;
	    else if(all > 900 && all <= 1030)
	    	hours = 05;
	    else if(all > 1030 && all <= 1200)
	    	hours = 08;
	    else if(all > 1200 && all <= 1330)
	    	hours = 08;
	    else if(all > 1330 && all <= 1500)
	    	hours = 11;
	    else if(all > 1500 && all <= 1630)
	    	hours = 11;
	    else if(all > 1630 && all <= 1800)
	    	hours = 14;
	    else if(all > 1800 && all <= 1930)
	    	hours = 14;
	    else if(all > 1930 && all <= 2100)
	    	hours = 17;
	    else if(all > 2100 && all <= 2230)
	    	hours = 17;
	    else if((all > 2230 && all < 2400) || all == 0)
	    	hours = 20;
	    else if(all > 0 && all <= 130)
	    	hours = 20;
	    else if(all > 130 && all <= 300)
	    	hours = 23;
	    else if(all > 300 && all <= 430)
	    	hours = 23;
	    
	    if(hours < 10) {
	        hours = '0' + hours;
	    }    
	    
	    if(all > 0 && all <= 430){
	    	today.setDate(today.getDate() - 1);
            day = today.getDate();
            month = today.getMonth()+1;
            year = today.getFullYear();
	    }
	    
	    if(month < 10) {
	        month = '0' + month;
	    }    
	    if(day < 10) {
	    	day = '0' + day;
	    }
	    
	    today = year+""+month+""+day;
	    
	    ForecastGribURL = "http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastSpaceData";
	    ForecastGribURL += "?ServiceKey=" + apikey;
	    ForecastGribURL += "&base_date=" + today;
	    ForecastGribURL += "&base_time=" + hours +"00";
	    ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
	    ForecastGribURL += "&pageNo=1&numOfRows=10";
	    ForecastGribURL += "&_type=json";

		var test2 = $.ajax({
			method: 'GET',
			dataType: 'json',
		    url: 'resources/temp/proxy.jsp',
		    data: {url:ForecastGribURL}
			}).done(function(data){
				var text = test2.responseText;
			    text = text.replace(/(<([^>]+)>)/ig,""); //HTML 태그 모두 공백으로 대체
				text = '[' + text + ']';
			    var json = $.parseJSON(text);
			    var probability = json[0].response.body.items.item[0].fcstValue;
			    if($('.info em strong').text() == '맑음')
			    	$('.info p strong').html(0);
			    else
			   		$('.info p strong').html(probability);
		    });
		
		$.ajax({
			type: 'GET',
			dataType: 'json',
			url: 'http://maps.googleapis.com/maps/api/geocode/json?latlng=37.6427334,127.07221980000001&language=ko',
			success: function(data){
				var location = data.results[0].formatted_address;
				var length = data.results[0].formatted_address.length;
				//alert(location.substring(5, length+1));
			}
		})
	}
   
   	function checkSky(num){
	   switch(num){
	      case 1:
	    	  $('.weather_wrap').find('img').attr('src', 'resources/images/clear.gif');
	    	  return '맑음';
	      case 2:
	    	  $('.weather_wrap').find('img').attr('src', 'resources/images/partly cloudy.gif');
	    	  return '구름조금';
	      case 3:
	    	  $('.weather_wrap').find('img').attr('src', 'resources/images/mostly cloudy.gif');
	    	  return '구름많음';
	      case 4:
	    	  $('.weather_wrap').find('img').attr('src', 'resources/images/clouding.gif');
	    	  return '흐림';
          default:
        	  break;
	   }
   	}
   
   	function precipitation(){
 	   var today = new Date();
 	   var week = new Array('일','월','화','수','목','금','토');
 	   var year = today.getFullYear();
 	   var month = today.getMonth()+1;
 	   var day = today.getDate();
 	   var hours = today.getHours();
 	   var minutes = today.getMinutes();
 	
 	   if(minutes < 10){
 		   hours = hours - 1;
 		   if(hours < 0){
 	           // 자정 이전은 전날로 계산
 	           today.setDate(today.getDate() - 1);
 	           day = today.getDate();
 	           month = today.getMonth()+1;
 	           year = today.getFullYear();
 	           hours = 23;
 	       }
 	    }
 	    
 	    if(hours < 10) {
 	        hours = '0'+hours;
 	    }
 	    if(month < 10) {
 	        month = '0' + month;
 	    }    
 	    if(day < 10) {
 	        day = '0' + day;
 	    } 
 	 
 	    today = year+""+month+""+day;
    }
   	
   	$(document).keyup(function(){
  		navigator.geolocation.getCurrentPosition(function(position){
  			var rs = {};
  			rs = dfs_xy_conv('toLL', 60, 127, rs);
  		    /* alert('latitude: ' + rs['lat']);
  		    alert('longitude: ' + rs['lng']); */
  		    /* alert(position.coords.latitude);
  		    alert(position.coords.longitude); */
  		}, function(){}, {enableHighAccuracy:true});
  		/* realTimeWeather(); */
   });
   
   $('.ipt').click(function(){
	   
	   var id = $(this).attr('id');
	   var off = true;
	   
	   if(id == 'region_larea_header'){
		   off = false;
		   $('#region_larea_list').html('');
		   
		   $.ajax({
			  type: 'POST',
			  url: 'weatherList',
			  success: function(data){
				  $(data).each(function(){
					  if(this.si != undefined){
						  var html = $('#region_larea_list').html();
						  $('#region_larea_list').html(html+'<li><a href="javascript:;">'+this.si+'</a></li>');
					  }
				  });
			  }
		   });
	   }
	   else if(id == 'region_marea_header'){
		   if($('#region_larea_header .input_zone').text()!='시/도')
			   off = false;
	   }
	   else if(id == 'region_sarea_header'){
		   if($('#region_marea_header .input_zone').text()!='시/군/구')
			   off = false;
	   }
	   
	   if(!off){   
		   $('.ipt').not(this).each(function(){
			   $(this).removeClass('on');
		   });
		   $(this).toggleClass('on');
		   
		   var layer_popup = $(this).attr('id').substring(0, 12) + '_list_wrapper';
		   
		   $('.layer_popup').not('#'+layer_popup).each(function(){
			   $(this).css('display', 'none'); 
		   });
		   
		   $('#'+layer_popup).toggle();
	   }
   });
   
   $('.mini_close').click(function(){
	   var layer_popup = $(this).closest('.layer_popup');
	   layer_popup.css('display', 'none');
	   $('#'+layer_popup.attr('id').substring(0, 12)+'_header').removeClass('on');
   });
   
   $(document).on('click', '.mini_body li a', function(){
	   var region_area = $(this).closest('.layer_popup').attr('id').substring(0, 12);
	   var text = $(this).text();
	   if(text == '세종특별자치시')
		   $('#'+region_area+'_header .input_zone').text('세종특...');
	   else
		   $('#'+region_area+'_header .input_zone').text(text);
	   $(this).closest('.mini_body').next('.mini_close').click();

	   if($(this).closest('ul').attr('id') == 'region_larea_list'){
		   $('#region_marea_header .input_zone').text('시/군/구');
		   $('#region_sarea_header .input_zone').text('동/읍/면');
		   
		   $('#region_marea_list').html('');
		   
		   var si = text;
		   
		   $.ajax({
			  type: 'POST',
			  url: 'weatherList',
			  data: {si:si},
			  success: function(data){
				  $(data).each(function(){
					  if(this.gu != undefined){
						  var html = $('#region_marea_list').html();
						  $('#region_marea_list').html(html+'<li><a href="javascript:;">'+this.gu+'</a></li>');
					  }
				  });
			  }
		   });
		 
		   $('#region_marea_header').addClass('on');
		   $('#region_marea_list_wrapper').show();
	   }
	   
	   else if($(this).closest('ul').attr('id') == 'region_marea_list'){
		   $('#region_sarea_header .input_zone').text('동/읍/면');
		   
		   $('#region_sarea_list').html('');
		   
		   var si = $('#region_larea_header .input_zone').text();
		   var gu = text;
		   
		   $.ajax({
			  type: 'POST',
			  url: 'weatherList',
			  data: {si:si, gu:gu},
			  success: function(data){
				  $(data).each(function(){
					  if(this.dong != undefined){
						  var html = $('#region_sarea_list').html();
						  $('#region_sarea_list').html(html+'<li><a href="javascript:;">'+this.dong+'</a></li>');
					  }
				  });
			  }
		   });
		   
		   $('#region_sarea_header').addClass('on');
		   $('#region_sarea_list_wrapper').show();
	   }
   })
   
   $('.btn_inquire').click(function(){
	   var larea = $('#region_larea_header .input_zone').text();
	   var marea = $('#region_marea_header .input_zone').text();
	   var sarea = $('#region_sarea_header .input_zone').text();
	   if(larea == '시/도' && marea == '시/군/구' && sarea == '동/읍/면')
		   alert('최소 시/도까지는 선택해야 합니다.');
	   else{
		   var si = larea;
		   var gu = marea;
		   var dong = sarea;
		   
		   $.ajax({
			   type: 'POST',
			   url: 'weatherGrid',
			   data: {si:si, gu:gu, dong:dong},
			   success: function(data){
				   realTimeWeather(data.gridX, data.gridY);
			   }
		   })
	   }
   });
   
   /* $('document :not(.layer_popup, .ipt *)').on('click', function(){
	  alert('a');
   }); */
</script>
</body>
</html>