<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>날씨 정보</title>
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
    width: 586px;
    height: 47px;
    margin: 0 auto;
    background: url(http://static.naver.com/weather/images/bg_zone_sel2.gif) no-repeat 0 0;
    line-height: 13px;
    border: 1px solid #7b848b;
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
	width: 586px;
	/* border-bottom: 1px solid #f8f8f8; */	
	/* text-align: center; */
	margin: 0 auto;
	/* margin-top: 100px; */
	border: 1px solid #7b848b;
	border-top: 1px solid #e1e3e5;
	border-bottom: 1px solid #e1e3e5;
}

.weather_wrap h4{
	padding: 12px 0 7px 14px;
    border-bottom: 1px solid #e1e3e5;
    background: #f7f9fa;
    font-size: 12px;
    font-weight: bold;
    color: #333;
    text-align: left;
}

.weather_wrap h4 .announce{
	font-family: dotum,'돋움';
    font-size: 11px;
    font-weight: normal;
    color: #777;
}

.weather_wrap p{
    padding: 0;
    line-height: 18px;
    color: #333;
    letter-spacing: -1px;
}

.weather_wrap li.after_h .inner p {
    display: block;
    line-height: 16px;
    vertical-align: middle;
    zoom: 1;
    margin-top: 3px;
}

.inner em{
	display: block;
    font-family: tahoma,sans-serif;
    font-size: 17px;
    font-weight: bold;
    color: #333;
    letter-spacing: -1px;
    line-height: 18px;
}

.inner em span{
	display: inline-block;
    margin-left: 2px;
    vertical-align: 0;
}

/* .weather_wrap ul{
	border: 1px solid #7b848b;
	border-top: 1px solid #e1e3e5;
	border-bottom: 1px solid #e1e3e5;
} */

.weather_wrap ul:after {
    display: block;
    clear: both;
    content: '';
}

.weather_wrap li{
	float: left;
    width: 290px;
    height: 103px;
    padding: 22px 0 0 16px;
}

.weather_wrap li.after_h {
    width: 138px;
    height: 109px;
    padding: 16px 0 0 1px;
    border-left: 1px solid #eaecee;
}

.weather_wrap li.after_h h6 {
    font-size: 12px;
    font-weight: bold;
    color: #333;
    letter-spacing: -1px;
    text-align: center;
}

.weather_wrap li.after_h h6 em {
    font-family: tahoma,sans-serif;
    letter-spacing: 0;
}

.weather_wrap li.after_h .inner {
    /* margin: 5px 0 0 11px; */
    line-height: 46px;
    text-align: center;
}

.weather_wrap li.after_h .inner img {
    vertical-align: middle;
}

.weather_img{
	border: 0;
	vertical-align: top;
	display: block;
    float: left;
}

.info{
	line-height: normal;
	display: block;
	float: left;
    position: relative;
    width: 175px;
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
    background: url(resources/images/weather/small/bg_dgr.gif) 0 0 no-repeat;
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
    line-height: 16px;
    color: #636563;
    padding: 0;
    letter-spacing: -1px;
}

.info p .temp {
    color: #636563;
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

.info p a {
    display: inline-block;
    text-decoration: none;
}

.info p a em {
	margin-bottom: 0px;
    margin-left: 3px;
    font-size: 11px;
    font-weight: normal;
    display: inline;
    font-family: dotum,'돋움';
}

.info p a .atm_ico {
    display: inline-block;
    width: 2px;
    height: 2px;
    margin: 0 4px 0 5px;
    background: url(http://static.naver.com/weather/images/dvs_dot.gif) no-repeat;
    vertical-align: middle;
}

.info p a .help {
    display: inline-block;
    overflow: hidden;
    width: 12px;
    height: 12px;
    margin: -1px 0 1px 4px;
    background: url(http://static.naver.net/weather/images/btn_help2.gif) no-repeat;
    text-decoration: none;
    text-indent: -1000px;
    vertical-align: middle;
}

.info .good{
	color: #4e89f6;
}

/* 동네예보  */

.c_box{
	position: relative;
	width: 588px;
	z-index: 10;
	font-size: 12px;
    margin: 0 auto;
}

.c_box a {
    text-decoration: none;
}

.c_box a span{
	cursor: pointer;
}

.c_box .c_body{
	overflow: hidden;
    border: 1px solid #7b848b;
    border-top: 0;
    zoom: 1;
}

.c_box h4{
	padding: 12px 0 7px 14px;
    border-bottom: 1px solid #e1e3e5;
    background: #f7f9fa;
    font-size: 12px;
    font-weight: bold;
    color: #333;
    text-align: left;
}

.c_box h4 .announce{
	font-family: dotum,'돋움';
    font-size: 11px;
    font-weight: normal;
    color: #777;
}

.w_now2{
	position: relative;
    z-index: 1;
}

.w_now2 ul{
	border: 0;
    border-bottom: 1px solid #bcc1c4;
    zoom: 1;
}

.w_now2 li {
    float: left;
    width: 290px;
    height: 103px;
    padding: 22px 0 0 16px;
}

li {
	list-style-type: none;
}

.w_now2 .ico_wt {
    display: block;
    float: left;
}

.w_now2 .fl {
    float: left;
    position: relative;
    width: 175px;
}

.w_now2 .fl h5 {
    margin: 0;
    padding: 0 0 3px;
    font-size: 12px;
    font-weight: bold;
    color: #f60;
    letter-spacing: -1px;
    line-height: normal;
}

.w_now2 .fl h5 span {
    font-family: Tahoma,sans-serif;
    letter-spacing: 0;
}

.w_now2 .fl em {
    display: inline-block;
    margin-bottom: 4px;
    font-family: tahoma,sans-serif;
    font-size: 24px;
    font-weight: bold;
    color: #333;
    letter-spacing: -1px;
    line-height: normal;
}

.w_now2 .fl em span {
    display: inline-block;
    overflow: hidden;
    width: 16px;
    height: 19px;
    margin-left: 8px;
    background: url(https://ssl.pstatic.net/static/weather/images/bg_dgr.gif) 0 0 no-repeat;
    line-height: 999px;
    vertical-align: 0;
}

.w_now2 .fl em strong {
    padding-left: 7px;
    font-size: 12px;
    font-weight: normal;
    vertical-align: 1px;
}

.w_now2 .fl p {
    font-size: 11px;
    line-height: 16px;
    color: #636563;
}

.w_now2 p {
    padding: 0;
    line-height: 18px;
    color: #333;
    letter-spacing: -1px;
    font-family: dotum,'돋움';
}

.w_now2 p .bar2 {
    padding: 0 3px 0 2px;
    color: #ddd;
}

.w_now2 .fl p .per_num {
	font-family: tahoma,sans-serif;
    padding: 0 1px 0 3px;
    font-weight: bold;
}

.w_now2 .fl p a {
    color: #636563;
}

.w_now2 .fl p .atm {
    margin: 0 1px 0 3px;
}

.w_now2 .fl .good {
    color: #4e89f6;
}
.w_now2 .fl .normal {
    color: #3dc948;
}
.w_now2 .fl .bitbad{
	color:#ff9804
}
.w_now2 .fl .bad{
	color:#ff670b
}
.w_now2 .fl .toobad{
	color:#ee090b
}

.weather_wrap .info .good{
	color: #4e89f6;
}
.weather_wrap .info .normal {
    color: #3dc948;
}
.weather_wrap .info .bitbad{
	color:#ff9804
}
.weather_wrap .info .bad{
	color:#ff670b
}
.weather_wrap .info .toobad{
	color:#ee090b
}

._fine_dust_exp .good, ._fine_dust_exp .normal,
._fine_dust_exp .bitbad, ._fine_dust_exp .bad,
._fine_dust_exp .toobad{
	font-weight: bold;
}

.w_now2 .ico_atm {
    overflow: hidden;
    display: inline-block;
    width: 4px;
    height: 18px;
    background: url(https://ssl.pstatic.net/sstatic/keypage/outside/weather/img/bg_lyatm.png) no-repeat 0px -51px;
    line-height: 999em;
    vertical-align: top;
    margin: 0 3px 0 2px;
}

.w_now2 .fl p .help {
    display: inline-block;
    overflow: hidden;
    width: 12px;
    height: 12px;
    margin: -1px 0 1px;
    background: url(https://ssl.pstatic.net/sstatic/keypage/outside/weather/img/btn_help.gif) no-repeat;
    text-decoration: none;
    text-indent: -1000px;
    vertical-align: middle;
}

.ly_atm {
    position: absolute;
    top: 83px;
    left: 0;
    min-width: 235px;
    padding: 10px 15px 10px 13px;
    border: 1px solid #999;
    background-color: #fff;
    line-height: 19px;
}

._fine_dust_exp{
	z-index: 999;
}

.ly_atm dt {
    color: #666!important;
    font-family: dotum,'돋움';
}

.ly_atm .ly_data {
    color: #999!important;
}

.ly_atm .ly_data2 {
    color: #bababa!important;
}

.ly_atm .mono_dt {
    float: left;
}

.ly_atm dd {
    color: #666;
    font-family: dotum,'돋움';
}

.ly_atm .chk_place {
    margin-top: 5px;
    padding-top: 7px;
    border-top: 1px solid #ececec;
    font-size: 11px;
    line-height: 17px;
    color: #999;
}

.cs_weather .ly_atm .chk_place .bar {
    height: auto;
    margin: 0 6px;
    color: #ddd;
    
    display: inline-block;
    overflow: hidden;
    width: 0;
    /* height: 11px;
    margin: -1px 5px 1px 4px; */
    border-left: 1px solid #eaeaea;
    vertical-align: middle;
}

.ly_atm .close {
    overflow: hidden;
    position: absolute;
    top: 0;
    right: 0;
    width: 27px;
    height: 27px;
    cursor: pointer;
}

.ly_atm .close span {
    display: block;
    width: 11px;
    height: 11px;
    margin: 8px 0 0 8px;
    background: url(https://ssl.pstatic.net/static/weather/images/ico_etc.png) no-repeat -15px 0;
    text-indent: -100px;
}

.w_now2 li.after_h {
    width: 138px;
    height: 109px;
    padding: 16px 0 0 1px;
    border-left: 1px solid #eaecee;
    text-align: center;
}

.w_now2 li.after_h h6 {
    padding: 0;
    font-size: 12px;
    font-weight: bold;
    color: #333;
    letter-spacing: -1px;
    text-align: center;
}

.w_now2 li.after_h h6 em {
    margin-left: -1px;
    font-family: tahoma,sans-serif;
    letter-spacing: 0;
}

.w_now2 li.after_h .inner {
    line-height: 46px;
    font-family: dotum,'돋움';
}

.w_now2 li.after_h .inner img {
    vertical-align: middle;
}

.w_now2 li.after_h .inner p {
    display: block;
    margin-left: 2px;
    line-height: 16px;
    vertical-align: middle;
    zoom: 1;
    margin-top: 3px;
}

.w_now2 li.after_h.v2 {
    width: 138px;
}

.w_now2 ul:after {
    display: block;
    clear: both;
    content: '';
}

.c_box .c_body .tldw_wrap {
    position: relative;
    zoom: 1;
}

.c_box .c_body .tldw_mnu {
    overflow: hidden;
    position: absolute;
    top: 7px;
    right: 6px;
    zoom: 1;
}

.c_box .c_body .tldw_mnu li {
    float: left;
    margin-right: -1px;
}

.c_box .c_body .tldw_mnu li .itm {
    height: 27px;
    background: url(https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/bg_tldw_mnu.gif) no-repeat 0 0;
}

.c_box .c_body .tldw_mnu li .temp {
    display: block;
    width: 84px;
    background-position: 0 -71px;
}

.c_box .c_body .tldw_mnu .on .itm {
    position: relative;
}

.c_box .c_body .tldw_mnu .on .temp {
    width: 94px;
    background-position: 0 0;
}

.c_box .c_body .tldw_mnu .on .per {
    font-weight: normal;
}

.c_box .c_body .tldw_mnu li .itm a {
    display: block;
    padding: 7px 0 4px;
    font-family: dotum,'돋움';
    font-size: 11px;
    color: #666;
    letter-spacing: -1px;
    text-decoration: none;
    line-height: normal;
}

.c_box .c_body .tldw_mnu li .temp a {
    padding-left: 12px;
}

.c_box .c_body .tldw_mnu .on .itm a {
    padding-bottom: 6px;
    background: url(https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/btn_arr_b.gif) no-repeat 0 0;
    font-weight: bold;
    color: #333;
}

.c_box .c_body .tldw_mnu .on .temp a {
    padding-left: 10px;
    background-position: 79px 12px;
}

.c_box .c_body .tldw_mnu li .itm .sep {
    font-weight: normal !important;
}

.c_box .c_body .tldw_mnu .on .cels {
    font-weight: normal;
}

.c_box .c_body .tldw_mnu li .itm .cels {
    font-family: gulim,'굴림';
    font-size: 12px;
}

.c_box .c_body .tldw_mnu .on .rain {
    width: 77px;
    background-position: -83px -35px;
}

.c_box .c_body .tldw_mnu .on .rain a {
    padding-left: 18px;
    background-position: 60px 12px;
}

.c_box .c_body .tldw_mnu li .rain {
    display: block;
    width: 67px;
    background-position: -83px -71px;
}

.c_box .c_body .tldw_mnu li .rain a {
    padding-top: 8px;
    padding-left: 18px;
}

.c_box .c_body .tldw_mnu li .itm .per {
    letter-spacing: normal;
}

.c_box .c_body .tldw_mnu li.last {
    margin-right: 0;
}

.c_box .c_body .tldw_mnu .on .humi {
    width: 77px;
    background-position: -149px -71px;
}

.c_box .c_body .tldw_mnu .on .humi a {
    padding-left: 18px;
    background-position: 60px 12px;
}

.c_box .c_body .tldw_mnu li .humi {
    display: block;
    width: 67px;
    background-position: -159px 0;
}

.c_box .c_body .tldw_mnu li .humi a {
    padding-top: 8px;
    padding-left: 18px;
}

.c_box .c_body .tldw_tbl {
    border: 0;
    border-collapse: separate;
}

.c_box table{
	clear: none;
}

.c_box .c_body .tldw_tbl caption {
    padding: 12px 0 0;
    border-bottom: 1px solid #d1d3d5;
    background: #f7f9fa;
    text-align: left;
}

.c_box .c_body .tldw_tbl caption .tit {
    overflow: hidden;
    height: 21px;
    padding-left: 14px;
    font-size: 12px;
    font-weight: bold;
    line-height: 14px;
    color: #333;
}

.c_box .c_body .tldw_tbl caption .announce {
    font-family: dotum,'돋움';
    font-size: 11px;
    font-weight: normal;
    color: #777;
}

.c_box .c_body .tldw_tbl th {
    padding: 6px 0 4px;
    border: 0;
    border-right: 1px solid #e8eaeb;
    border-bottom: 1px solid #f3f4f5;
    font-family: dotum,'돋움';
    font-size: 11px;
    font-weight: normal;
    color: #666;
    text-align: center;
}

.c_box .c_body .tldw_tbl th.last {
    border-right: 0;
}

.c_box td, th {
    font-size: 12px;
    line-height: 1.3;
    color: #000;
}

.c_box .c_body .tldw_tbl td {
    padding: 0;
    border: 0;
    border-right: 1px solid #f8f8f9;
}

.c_box .c_body .tldw_tbl .d_tit td {
    border-bottom: 1px solid #e8e8e8;
    text-align: center;
}

.c_box .c_body .tldw_tbl td.sep {
    border-right: 1px solid #e8eaeb;
}

.img_ti {
    display: block;
    overflow: hidden;
    width: 11px;
    height: 9px;
    background: url(https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/bg_img_ti.gif) no-repeat 0 0;
    text-indent: -999px;
}

.c_box .c_body .tldw_tbl .d_tit td .img_ti {
    display: inline-block;
    margin: 5px 0;
}

.c_box .c_body .tldw_tbl td.last {
    border-right: 0;
}

.c_box .c_body .tldw_tbl .w_info .last .wi_wrap {
    width: 38px;
}

.img_ti03{background-position:0 -12px}
.img_ti06{background-position:0 -24px}
.img_ti09{background-position:0 -36px}
.img_ti12{background-position:0 -48px}
.img_ti15{background-position:0 -60px}
.img_ti18{background-position:0 -72px}
.img_ti21{background-position:0 -84px}

.c_box .c_body .tldw_tbl .w_info .wi_wrap {
    overflow: hidden;
    position: relative;
    width: 38px;
    height: 120px;
}

.c_box .c_body .tldw_tbl .w_info .bl_ico {
    overflow: hidden;
    position: absolute;
    width: 100%;
    height: 34px;
    text-align: center;
}

.c_box .c_body .tldw_tbl .w_info .bl_ico .temp {
    display: block;
    overflow: hidden;
    height: 10px;
    font-family: tahoma;
    font-size: 9px;
    color: #444;
    text-align: center;
    line-height: 9px;
}

.c_box .c_body .tldw_tbl .w_info .bl_ico .tp_max {
    color: #f23c3c;
}

.wss {
    display: block;
    overflow: hidden;
    width: 36px;
    height: 25px;
    background: url(https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/ico_ws.jpg) no-repeat 0 0;
}

.c_box .c_body .tldw_tbl .w_info .bl_ico .wss {
    display: inline-block;
    text-indent: -999px;
}

.wss2{background-position:0 -30px}
.wss3{background-position:0 -60px}
.wss4{background-position:0 -90px;}
.wss5{background-position:0 -120px}
.wss6{background-position:0 -150px}
.wss7{background-position:0 -180px}
.wss8{background-position:0 -210px}
.wss9{background-position:0 -240px}
.wss10{background-position:0 -270px}
.wss11{background-position:0 -300px}
.wss12{background-position:0 -330px}
.wss13{background-position:0 -360px}
.wss14{background-position:0 -390px}
.wss15{background-position:0 -420px}
.wss16{background-position:0 -450px}
.wss17{background-position:0 -480px}
.wss18{background-position:0 -510px}
.wss19{background-position:0 -540px}
.wss20{background-position:0 -570px}
.wss21{background-position:0 -600px}
.wss22{background-position:0 -630px}

.c_box .c_body .tldw_tbl .w_info .bl_bar {
    position: absolute;
    bottom: 0;
    width: 100%;
    text-align: center;
}

.c_box .c_body .tldw_tbl .w_info .bl_bar .scal {
    display: block;
    padding-bottom: 3px;
    font-family: tahoma;
    font-size: 9px;
    color: #259cef;
    text-align: center;
}

.c_box .c_body .tldw_tbl .w_info .bl_bar .gb_wrap {
    line-height: 0;
    text-align: center;
}

.c_box .c_body .tldw_tbl .w_info .bl_bar .g_bar {
    display: inline-block;
    overflow: hidden;
    width: 6px;
}

.c_box .c_body .tldw_tbl .w_info .bl_bar .g_bar span {
    display: block;
    height: 100%;
    border-top: 1px solid #61b1e1;
    border-right: 1px solid #61b1e1;
    background: #68bef2;
}

.c_box .c_body .tldw_tbl .w_info .bl_bar_v2 .scal {
    color: #6a8598;
}

.c_box .c_body .tldw_tbl .w_info .bl_bar_v2 .g_bar span {
    border-top: 1px solid #9db4c6;
    border-right: 1px solid #9db4c6;
    background: #a9c2d5;
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
		<h4>
			1시간 예보 <span class="announce">(07.07. 08:30 발표)</span>
		</h4>
		<ul>
			<li>
				<img src="resources/images/weather/big/mostly cloudy.gif" width="110" height="80" class="weather_img">
				<div class="info">
					<h5><span>22</span>시 현재</h5>
					<em>20<span>℃</span><strong>구름많음</strong></em>
					<p>어제 기온과 같음<span class="bar"> | </span>강수량<strong>0.0</strong>㎜
						<a href="javascript:;">
							<span>미세먼지<em class="good">좋음</em></span><span class="atm_ico"></span><span>오존<em class="good">좋음</em></span><span class="help">도움말</span>
						</a>
					</p>
					<div class="ly_atm _fine_dust_exp" style="display: none;">
						<dl>
							<dt>미세먼지 <span class="ly_data">22.0㎍/㎥</span>
							<strong class="good">좋음</strong><span class="ly_data2">(0-30)</span></dt>
							<dt class="mono_dt">오존 <span class="ly_data">0.031ppm</span>&nbsp;</dt>
							<dd><strong class="normal">보통</strong><span class="ly_data2">(0.04-0.080)</span></dd>
							<dt class="mono_dt v2">통합대기 <span class="ly_data">52.0</span>&nbsp;</dt>
							<dd><strong class="normal">보통</strong><span class="ly_data2">(51-100)</span></dd>
						</dl>
						<div class="chk_place">
							노원구 측정소<span class="bar">|</span><span>업데이트 7.7. 10:00</span><br>
						</div>
						<a href="#" title="닫기" class="close _fine_dust_exp_close"><span>닫기</span></a>
					</div>
				</div>
			</li>
			<li class="after_h">
                <h6><em>16</em>시 예보</h6> 
                <div class="inner">
                	<img src="resources/images/weather/small/rainy.gif" width="64" height="46" alt="비">
                	<em>20<span>℃</span></em>
                	<p>비</p>
                </div> 
            </li>
            <li class="after_h">
                <h6><em>17</em>시 예보</h6> 
                <div class="inner">
                	<img src="resources/images/weather/small/rainy.gif" width="64" height="46" alt="비">
                	<em>20<span>℃</span></em>
                	<p>비</p>
                </div> 
            </li>
		</ul>
	</div>

	<div class="c_box">
		<div class="c_body">
			<h4>
				3시간 예보 <span class="announce">(07.07. 08:30 발표)</span>
			</h4>
			<div class="w_now2">
				<ul>
					<li><img src="resources/images/weather/big/rainy.gif" width="110" height="80" alt="비" class="ico_wt">
						<div class="fl">
							<h5>
								<span>12</span>시 예보
							</h5>
							<em>26<span>℃</span><strong>비</strong></em>
							<p>
								어제 기온과 같음 <span class="bar2">|</span>강수확률<strong class="per_num">30</strong>%<br>
								<a href="javascript:;" class="_fine_dust_exp_open"> 미세먼지<span
									class="atm good">좋음</span><span class="ico_atm"></span>오존<span
									class="atm normal">보통</span>
								</a> <a href="javascript:;" title="도움말" class="help _fine_dust_exp_open">도움말</a>
							</p>
							<div class="ly_atm _fine_dust_exp" style="display: none;">
								<dl>
									<dt>미세먼지 <span class="ly_data">22.0㎍/㎥</span>
									<strong class="good">좋음</strong><span class="ly_data2">(0-30)</span></dt>
									<dt class="mono_dt">오존 <span class="ly_data">0.031ppm</span>&nbsp;</dt>
									<dd><strong class="normal">보통</strong><span class="ly_data2">(0.04-0.080)</span></dd>
									<dt class="mono_dt v2">통합대기 <span class="ly_data">52.0</span>&nbsp;</dt>
									<dd><strong class="normal">보통</strong><span class="ly_data2">(51-100)</span></dd>
								</dl>
								<div class="chk_place">
									노원구 측정소<span class="bar">|</span><span>업데이트 7.7. 10:00</span><br>
								</div>
								<a href="#" title="닫기" class="close _fine_dust_exp_close"><span>닫기</span></a>
							</div>
						</div></li>
					<li class="after_h">
						<h6>
							<em>15</em>시 예보
						</h6>
						<div class="inner">
							<img src="resources/images/weather/small/rainy.gif" width="64" height="46" alt="비">
							<em>20<span>℃</span></em>
							<p>비</p>
						</div>
					</li>
					<li class="after_h v2">
						<h6>
							<em>18</em>시 예보
						</h6>
						<div class="inner">
							<img src="resources/images/weather/small/rainy.gif" width="64" height="46" alt="비">
							<em>20<span>℃</span></em>
							<p>비</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="tldw_wrap  _thweather">
				<ul class="tldw_mnu">
					<li class="on _btntemp"><span class="itm temp"><a href="javascript:;">날씨<span class="sep">/</span>기온 <span class="cels">℃</span></a></span></li>
					<li class="_btnrain"><span class="itm rain"><a href="javascript:;">강수<span class="per">%</span></a></span></li>
					<li class="last _btnhumi"><span class="itm humi"><a href="javascript:;">습도<span class="per">%</span></a></span></li>
				</ul>
				<div class="_temp">
					<table cellspacing="0" border="1" class="tldw_tbl">
						<caption>
							<div class="tit">
								동네예보 <span class="announce">(07.07. 10:00 발표)</span>
							</div>
						</caption>
						<colgroup>
							<col>
							<col>
							<col>
						</colgroup>
						<thead>
							<tr>
								<th scope="col" colspan="4">오늘</th>
								<th scope="col" colspan="8">내일</th>
								<th scope="col" colspan="3" class="last">모레</th>
							</tr>
						</thead>
						<tbody>
							<tr class="d_tit">
								<td><span class="img_ti img_ti12">12</span></td>
								<td><span class="img_ti img_ti15">15</span></td>
								<td><span class="img_ti img_ti18">18</span></td>
								<td class="sep"><span class="img_ti img_ti21">21</span></td>
								<td><span class="img_ti img_ti00">00</span></td>
								<td><span class="img_ti img_ti03">03</span></td>
								<td><span class="img_ti img_ti06">06</span></td>
								<td><span class="img_ti img_ti09">09</span></td>
								<td><span class="img_ti img_ti12">12</span></td>
								<td><span class="img_ti img_ti15">15</span></td>
								<td><span class="img_ti img_ti18">18</span></td>
								<td class="sep"><span class="img_ti img_ti21">21</span></td>
								<td><span class="img_ti img_ti00">00</span></td>
								<td><span class="img_ti img_ti03">03</span></td>
								<td class="last"><span class="img_ti img_ti06">06</span></td>
							</tr>
							<tr class="w_info">
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 36px">
											<span class="temp">26</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 36px">
											<span class="temp">26</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 18px">
											<span class="temp">25</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td class="sep">
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 18px">
											<span class="temp">25</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 18px">
											<span class="temp">25</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 0px">
											<span class="temp">24</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 0px">
											<span class="temp">24</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 18px">
											<span class="temp">25</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 36px">
											<span class="temp">26</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 72px">
											<span class="temp tp_max">28</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 54px">
											<span class="temp">27</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="흐림" title="흐림" class="wss wss3">
										</div>
									</div>
								</td>
								<td class="sep">
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 18px">
											<span class="temp">25</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="흐림" title="흐림" class="wss wss3">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 18px">
											<span class="temp">25</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="흐림" title="흐림" class="wss wss3">
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 0px">
											<span class="temp">24</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
								<td class="last">
									<div class="wi_wrap">
										<div class="bl_ico" style="bottom: 0px">
											<span class="temp">24</span> <img
												src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif"
												width="35" height="26" alt="비" title="비" class="wss wss4">
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="_rain" style="display: none">
					<table cellspacing="0" border="1" class="tldw_tbl">
						<caption>
							<div class="tit">
								동네예보 <span class="announce">(07.07. 10:00 발표)</span>
							</div>
						</caption>
						<colgroup>
							<col>
							<col>
							<col>
						</colgroup>
						<thead>
							<tr class="w_info">
								<th scope="col" colspan="4">오늘</th>
								<th scope="col" colspan="8">내일</th>
								<th scope="col" colspan="3" class="last">모레</th>
							</tr>
						</thead>
						<tbody>
							<tr class="d_tit">
								<td><span class="img_ti img_ti12">12</span></td>
								<td><span class="img_ti img_ti15">15</span></td>
								<td><span class="img_ti img_ti18">18</span></td>
								<td class="sep"><span class="img_ti img_ti21">21</span></td>
								<td><span class="img_ti img_ti00">00</span></td>
								<td><span class="img_ti img_ti03">03</span></td>
								<td><span class="img_ti img_ti06">06</span></td>
								<td><span class="img_ti img_ti09">09</span></td>
								<td><span class="img_ti img_ti12">12</span></td>
								<td><span class="img_ti img_ti15">15</span></td>
								<td><span class="img_ti img_ti18">18</span></td>
								<td class="sep"><span class="img_ti img_ti21">21</span></td>
								<td><span class="img_ti img_ti00">00</span></td>
								<td><span class="img_ti img_ti03">03</span></td>
								<td class="last"><span class="img_ti img_ti06">06</span></td>
							</tr>
							<tr class="w_info w_info_v2">
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">80</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 80px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">80</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 80px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td class="sep">
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">80</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 80px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">70</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 70px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">30</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 30px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td class="sep">
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">30</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 30px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">30</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 30px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">80</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 80px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td class="last">
									<div class="wi_wrap">
										<div class="bl_bar">
											<span class="scal">80</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 80px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="_humi" style="display: none">
					<table cellspacing="0" border="1" class="tldw_tbl">
						<caption>
							<div class="tit">
								동네예보 <span class="announce">(07.07. 10:00 발표)</span>
							</div>
						</caption>
						<colgroup>
							<col>
							<col>
							<col>
						</colgroup>
						<thead>
							<tr>
								<th scope="col" colspan="4">오늘</th>
								<th scope="col" colspan="8">내일</th>
								<th scope="col" colspan="3" class="last">모레</th>
							</tr>
						</thead>
						<tbody>
							<tr class="d_tit">
								<td><span class="img_ti img_ti12">12</span></td>
								<td><span class="img_ti img_ti15">15</span></td>
								<td><span class="img_ti img_ti18">18</span></td>
								<td class="sep"><span class="img_ti img_ti21">21</span></td>
								<td><span class="img_ti img_ti00">00</span></td>
								<td><span class="img_ti img_ti03">03</span></td>
								<td><span class="img_ti img_ti06">06</span></td>
								<td><span class="img_ti img_ti09">09</span></td>
								<td><span class="img_ti img_ti12">12</span></td>
								<td><span class="img_ti img_ti15">15</span></td>
								<td><span class="img_ti img_ti18">18</span></td>
								<td class="sep"><span class="img_ti img_ti21">21</span></td>
								<td><span class="img_ti img_ti00">00</span></td>
								<td><span class="img_ti img_ti03">03</span></td>
								<td class="last"><span class="img_ti img_ti06">06</span></td>
							</tr>
							<tr class="w_info w_info_v2">
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">80</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 80px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td class="sep">
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">95</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 95px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">95</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 95px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">95</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 95px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">85</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 85px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">85</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 85px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td class="sep">
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">90</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 90px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">95</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 95px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">95</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 95px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
								<td class="last">
									<div class="wi_wrap">
										<div class="bl_bar bl_bar_v2">
											<span class="scal">95</span>
											<div class="gb_wrap">
												<span class="g_bar" style="height: 95px;"><span></span></span>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="conf_area _confarea" style="display: none">
			<div class="ca_wrap">
				<div class="ca_header _inputbase">
					<form>
						<fieldset>
							<legend>관심지역</legend>
							<label for="ctl1">관심지역 설정</label> <input type="text"
								value="읍/면/동" class="input_txt _input_txt"> <input
								type="image"
								src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/btn_srch.gif"
								alt="검색" class="input_img _input_img">
						</fieldset>
					</form>
					<a href="#" onclick="return false;" class="btn_clse _close"><img
						src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/btn_clse.gif"
						width="11" height="11" alt="닫기"></a>
				</div>
				<div class="ca_body _resultbase">
					<p class="msg _msgdefault">
						<em>읍/면/동 이름으로 검색해 보세요</em>
					</p>
					<p class="s_msg _msgnoresult" style="display: none">
						<em>'링딩동'</em>에 대한 검색결과가 없습니다.
					</p>
					<div class="cab_wrap _resultwrap" style="display: none">
						<ul class="lst_addr _resultlist"></ul>
					</div>
				</div>
			</div>
		</div>
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
	 
	    $('.weather-date').html(month +"월 " + day + "일 " + week[today.getDay()]+"요일");
	    /*
	     * 기상청 30분마다 발표
	     * 30분보다 작으면, 한시간 전 hours 값
	     */
	    if(minutes < 30){
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
	    
	    if(minutes < 30){
	    	var n_hours = hours+1;
	    	if(n_hours < 10)
	    		n_hours = '0' + n_hours;
	    	$('.info h5 span').html(n_hours);
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
	    
	    if(minutes >= 30)
		    $('.info h5 span').html(hours);
	 
	    today = year+""+month+""+day;
	    
	    $('.weather_wrap .announce').text('('+month+'.'+day+'. '+hours+':30 발표)');
	    
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
		method: 'POST',
		dataType: 'json',
	    url: 'weatherData',
	    data: {url:ForecastGribURL}
		}).done(function(data){
	    	/* alert($.parseJSON(test.responseText)); */
			var text = test.responseText;
		    text = text.replace(/(<([^>]+)>)/ig,""); //HTML 태그 모두 공백으로 대체
			text = '[' + text + ']';
		    //alert(text);
		    var json = $.parseJSON(text);
		    var pty = json[0].response.body.items.item[1].obsrValue;
		    var sky = json[0].response.body.items.item[4].obsrValue;
		    var temper = json[0].response.body.items.item[5].obsrValue;
		    var aop = json[0].response.body.items.item[3].obsrValue;
		    if(pty == 1)
		   		$('.info > em').html(temper+'<span>℃</span><strong>'+checkSky(5)+'</strong>');
		    else
		    	$('.info > em').html(temper+'<span>℃</span><strong>'+checkSky(sky)+'</strong>');
		    $('.info p strong').text(aop);
	    });
	    
	    //----------------------------------------초단기예보----------------------------------------
	    
	    var today2 = new Date();
	    var year2 = today2.getFullYear();
	    var month2 = today2.getMonth()+1;
	    var day2 = today2.getDate();
	    var hours2 = today2.getHours();
	    var minutes2 = today2.getMinutes();
	    
		if(minutes2 < 30){
	        hours2 = hours2 - 1;
	        if(hours2 < 0){
	            today2.setDate(today2.getDate() - 1);
	            day2 = today2.getDate();
	            month2 = today2.getMonth()+1;
	            year2 = today2.getFullYear();
	            hours2 = 23;
	        }
	    }
	    
	    if(hours2 < 10) {
	        hours2 = '0'+hours2;
	    }
	    if(month2 < 10) {
	        month2 = '0' + month2;
	    }    
	    if(day2 < 10) {
	        day2 = '0' + day2;
	    } 
	 
	    today2 = year2+""+month2+""+day2;
	    
	    /* var _nx = 61, 
	    _ny = 128, */
	    apikey = "iM9M1hAu2%2B1oPsCuLxmIBdYTlMT09RILXSt%2FnGIWpYysavoQ4nW0gZzjYP87%2FOGpmzrJdC8NQBfAXzdlKzmx1Q%3D%3D";    
	    ForecastGribURL = "http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastTimeData";
	    ForecastGribURL += "?ServiceKey=" + apikey;
	    ForecastGribURL += "&base_date=" + today2;
	    ForecastGribURL += "&base_time=" + hours2 + "30";
	    ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
	    ForecastGribURL += "&pageNo=1&numOfRows=40";
	    ForecastGribURL += "&_type=json";

	    $.ajax({
	    	type: 'POST',
	    	dataType: 'json',
	    	url: 'weatherData',
	    	data: {url:ForecastGribURL},
	    	success: function(data){
			  	var num = Object.keys(data.response.body.items.item).length/10;
			  	$('.weather_wrap ul li.after_h').remove();
			  	if(minutes < 30){
			  		if(hours2 < 10)
			  			hours2 = Number(hours2.substring(1, hours2.length));
			  		
			  		for(i=2; i<=num; i++){
			  			var n_hours = hours2+i;
			  			if(n_hours < 10)
			  				n_hours = '0' + n_hours;
			  			
			  			var sky = data.response.body.items.item[(num*3-1)+i].fcstValue;
				  		var pty = data.response.body.items.item[(num*1-1)+i].fcstValue;
				  		var img = checkPic(sky, pty);
				  		var wea = checkWea(sky, pty);
				  		
				  		var tag='<li class="after_h">'+
					  				'<h6><em>'+n_hours+'</em>시 예보</h6>'+
					  				'<div class="inner">'+
					  					'<img src="'+img+'" width="64" height="46" alt="'+wea+'">'+
				                		'<em>'+data.response.body.items.item[(num*4-1)+i].fcstValue+'<span>℃</span></em>'+
				                		'<p>'+wea+'</p>'+
				                	'</div>'+
			            		'</li>';
			  			$('.weather_wrap ul').append(tag);
			  		}
			  		lsize(num-1);
			  	}else{
			  		if(hours2 < 10)
			  			hours2 = Number(hours2.substring(1, hours2.length));
			  		
			  		for(i=1; i<=num; i++){
			  			var n_hours = hours2+i;
			  			if(n_hours < 10)
			  				n_hours = '0' + n_hours;
			  			
			  			var sky = data.response.body.items.item[(num*3-1)+i].fcstValue;
				  		var pty = data.response.body.items.item[(num*1-1)+i].fcstValue;
				  		var img = checkPic(sky, pty);
				  		var wea = checkWea(sky, pty);
				  		
				  		var tag='<li class="after_h">'+
					  				'<h6><em>'+n_hours+'</em>시 예보</h6>'+
					  				'<div class="inner">'+
					  					'<img src="'+img+'" width="64" height="46" alt="'+wea+'">'+
				                		'<em>'+data.response.body.items.item[(num*4-1)+i].fcstValue+'<span>℃</span></em>'+
				                		'<p>'+wea+'</p>'+
				                	'</div>'+
			            		'</li>';
			  			$('.weather_wrap ul').append(tag);
			  		}
			  		lsize(num);
			  	}
	    	}
	    });
	    
	  //----------------------------------------동네예보----------------------------------------
	    
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

	    if (all >= 430 && all < 600)
	    	hours = 02;
	    else if(all >= 600 && all < 730)
	    	hours = 02;
	    else if(all >= 730 && all < 900)
	    	hours = 05;
	    else if(all >= 900 && all < 1030)
	    	hours = 05;
	    else if(all >= 1030 && all < 1200)
	    	hours = 08;
	    else if(all >= 1200 && all < 1330)
	    	hours = 08;
	    else if(all >= 1330 && all < 1500)
	    	hours = 11;
	    else if(all >= 1500 && all < 1630)
	    	hours = 11;
	    else if(all >= 1630 && all < 1800)
	    	hours = 14;
	    else if(all >= 1800 && all < 1930)
	    	hours = 14;
	    else if(all >= 1930 && all < 2100)
	    	hours = 17;
	    else if(all >= 2100 && all < 2230)
	    	hours = 17;
	    else if((all >= 2230 && all < 2400))
	    	hours = 20;
	    else if(all >= 0 && all < 130)
	    	hours = 20;
	    else if(all >= 130 && all < 300)
	    	hours = 23;
	    else if(all >= 300 && all < 430)
	    	hours = 23;
	    
	    var n_hours = hours + 4;
	    /* var n_hours2 = n_hours + 3;
	    var n_hours3 = n_hours2 + 3; */
	    
	    if(n_hours >= 24)
	    	n_hours -= 24;
	    /* if(n_hours2 >= 24)
	    	n_hours2 -= 24;
	    if(n_hours3 >= 24)
	    	n_hours3 -= 24; */
	    
    	if(n_hours < 10)
    		n_hours = '0' + n_hours;
    	/* if(n_hours2 < 10)
    		n_hours2 = '0' + n_hours2;
    	if(n_hours3 < 10)
    		n_hours3 = '0' + n_hours3; */
	    
    	if(hours < 10)
	        hours = '0' + hours;  
	   
	    $('.w_now2 .fl h5 span').text(n_hours);
	    
	    /* $('.w_now2 li:nth-child(2) h6 em').text(n_hours2);
	    $('.w_now2 li:last-child h6 em').text(n_hours3); */
	    
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
		
		$('.c_body h4 span.announce').text('('+month+'.'+day+'. '+hours+':'+'00 발표)');
		$('.tit span.announce').text('('+month+'.'+day+'. '+hours+':'+'00 발표)');
		
	    ForecastGribURL = "http://newsky2.kma.go.kr/service/SecndSrtpdFrcstInfoService2/ForecastSpaceData";
	    ForecastGribURL += "?ServiceKey=" + apikey;
	    ForecastGribURL += "&base_date=" + today;
	    ForecastGribURL += "&base_time=" + hours +"00";
	    ForecastGribURL += "&nx=" + _nx + "&ny=" + _ny;
	    ForecastGribURL += "&pageNo=1&numOfRows=170";
	    ForecastGribURL += "&_type=json";

		var test2 = $.ajax({
			method: 'POST',
			dataType: 'json',
		    url: 'weatherData',
		    data: {url:ForecastGribURL}
			}).done(function(data){
				var text = test2.responseText;
			    text = text.replace(/(<([^>]+)>)/ig,""); //HTML 태그 모두 공백으로 대체
				text = '[' + text + ']';
			    var json = $.parseJSON(text);
			    var probability = json[0].response.body.items.item[0].fcstValue;
			    $('.w_now2 .fl p .per_num').text(probability);
			    var t3h = json[0].response.body.items.item[getInfo(n_hours, 't3h')-1].fcstValue;
			    var sky = json[0].response.body.items.item[getInfo(n_hours, 'sky')-1].fcstValue;
			    var pty = json[0].response.body.items.item[getInfo(n_hours, 'pty')-1].fcstValue;
			    /* var test = json[0].response.body.items.item[].fcstValue; */
			    var wea = checkWea(sky, pty);
			    $('.w_now2 .fl em').html(t3h+'<span>℃</span><strong>'+wea+'</strong>');
			    changePic('.w_now2 .ico_wt', wea);
			    var date = calDate('today');
			    var date2 = 'today';
			    if(n_hours == '00' || n_hours == '03'){
					date = calDate('tom');
			    }
			    var all = 0;
			    all += getNum(n_hours, date, json);
			    $('.w_now2 li.after_h').remove();
			    
				for(i=1; i<3; i++){
					var n_hours2 = n_hours;
					var date = calDate('today');
					if(n_hours == '00' || n_hours == '03')
						date = calDate('tom');
					if(n_hours2 < 10){
						n_hours2 = Number(n_hours.substring(1, n_hours.length));
						n_hours2 += 3*i;
					} else
						n_hours2 += 3*i;
					if(n_hours2 < 10)
						n_hours2 = '0' + n_hours2;
					if(n_hours2 >= 24){
						n_hours2 = n_hours2 - 24;
						n_hours2 = '0' + n_hours2;
						if(date2 == 'today'){
							date = calDate('tom');
							date2 = 'tom';
						}
						else if(date2 == 'tom'){
							date = calDate('atom');
							date2 = 'atom';
						}
					}
					
					var t3h = json[0].response.body.items.item[all-1+getInfo(n_hours2, 't3h')].fcstValue;
				    var sky = json[0].response.body.items.item[all-1+getInfo(n_hours2, 'sky')].fcstValue;
				    var pty = json[0].response.body.items.item[all-1+getInfo(n_hours2, 'pty')].fcstValue;
				    var img = checkPic(sky, pty);
				    var wea = checkWea(sky, pty);
					
					var tag = '<li class="after_h">'+
							       '<h6><em>'+n_hours2+'</em>시 예보</h6>'+
					               '<div class="inner">'+
				        				'<img src="'+img+'" width="64" height="46" alt="'+wea+'">'+
										'<em>'+t3h+'<span>℃</span></em>'+
										'<p>'+wea+'</p>'+
								   '</div>'+
							  '</li>';
					$('.w_now2 ul').append(tag);
					
					all += getNum(n_hours2, date, json);
				}
				areaForecast(n_hours, json);
		    });
		
		/* 위도, 경도에 해당되는 주소 */
		
		/* $.ajax({
			type: 'GET',
			dataType: 'json',
			url: 'http://maps.googleapis.com/maps/api/geocode/json?latlng=37.6427334,127.07221980000001&language=ko',
			success: function(data){
				var location = data.results[0].formatted_address;
				var length = data.results[0].formatted_address.length;
				//alert(location.substring(5, length+1));
			}
		}) */
	}
   
   	function checkSky(num){
	   switch(num){
	      case 1:
	    	  $('.weather_wrap').find('.weather_img').attr('src', 'resources/images/weather/big/clear.gif');
	    	  return '맑음';
	      case 2:
	    	  $('.weather_wrap').find('.weather_img').attr('src', 'resources/images/weather/big/partly cloudy.gif');
	    	  return '구름조금';
	      case 3:
	    	  $('.weather_wrap').find('.weather_img').attr('src', 'resources/images/weather/big/mostly cloudy.gif');
	    	  return '구름많음';
	      case 4:
	    	  $('.weather_wrap').find('.weather_img').attr('src', 'resources/images/weather/big/clouding.gif');
	    	  return '흐림';
	      case 5:
	    	  $('.weather_wrap').find('.weather_img').attr('src', 'resources/images/weather/big/rainy.gif');
	    	  return '비';
          default:
        	  break;
	   }
   	}
   
   	function lsize(num){
 	   switch(num){
 	      case 1:
 	    	  $('.weather_wrap ul li.after_h').width('278');
 	    	  break;
    	  case 2:
    		  $('.weather_wrap ul li.after_h').width('138');
 	    	  break;
    	  case 3:
    		  $('.weather_wrap ul li.after_h').width('91');
 	    	  break;
    	  case 4:
    		  $('.weather_wrap ul li.after_h').width('68');
 	    	  break;
    	  default:
    		  break;
 	   }
    }
   	
   	function calDate(when){
   		var today = new Date();
	    var year = today.getFullYear();
	    var month = today.getMonth()+1;
	    var day = today.getDate();
	    
	    if(when == 'tom'){
	    	today.setDate(today.getDate() + 1);
	        year = today.getFullYear();
	        month = today.getMonth()+1;
	        day = today.getDate();
	    }
	    else if(when == 'atom'){
	    	today.setDate(today.getDate() + 2);
	        year = today.getFullYear();
	        month = today.getMonth()+1;
	        day = today.getDate();
	    }
         
        if(month < 10) {
   	        month = '0' + month;
   	    }    
   	    if(day < 10) {
   	    	day = '0' + day;
   	    }
   	    
   	    today = year+""+month+""+day;
   	    return today;
   	}
   	
   	function getNum(hour, date, json){
   		/* var num = 0;
   		if(hour == 03 || hour == 09 || hour == 21)
   			num = 9;
   		else if(hour == 15)
   			num = 10;
   		else if(hour == 12 || hour == 18 || hour == 00)
   			num = 11;
   		else if(hour == 06)
   			num = 12; */
   		var num = 0;
	    for(j=0; j<Object.keys(json[0].response.body.items.item).length; j++){
	    	if(date == json[0].response.body.items.item[j].fcstDate &&
	    	   hour+'00' == json[0].response.body.items.item[j].fcstTime){
	    		num+=1;
	    	}
	    }
   		return num;
   	}

   	function getInfo(hour, info){
   		var order = 0;
   		if(info == 'pop')
   			order = 1;
   		else if(info == 'pty')
   			order = 2;
   		else if(info == 'reh'){
   			if(hour == 03 || hour == 09 || hour == 15 || hour == 21)
   				order = 3;
   			else if(hour == 00 || hour == 06 || hour == 12 || hour == 18)
   				order = 4;
   		}
   		else if(info == 'sky'){
   			if(hour == 03 || hour == 09 || hour == 15 || hour == 21)
   				order = 4;
   			else if(hour == 00 || hour == 06 || hour == 12 || hour == 18)
   				order = 6;
   		}
   		else if(info == 't3h'){
   			if(hour == 03 || hour == 09 || hour == 15 || hour == 21)
   				order = 5;
   			else if(hour == 00 || hour == 06 || hour == 12 || hour == 18)
   				order = 7;
   		}
   		return order;
   	}
   	
   	function checkWea(sky, pty){
   		var weather;
	   	switch(sky){
	   		case 1:
	    	  	weather = '맑음';
	    	  	break;
	      	case 2:
	      		weather = '구름조금';
	      		break;
	      	case 3:
	      		weather = '구름많음';
	      		break;
	      	case 4:
	      		weather = '흐림';
	      		break;
          	default:
        	  	break;
        }
	   	if(pty == 1)
	   		weather = '비';
	   	return weather;
   	}
   	
   	function checkPic(sky, pty){
   		var img = '';
  		if(sky == 4 && pty == 1){
  			img = 'resources/images/weather/small/rainy.gif';
  		}
		else{
			if(sky == 1)
				img = 'resources/images/weather/small/clear.gif';
			else if(sky == 2)
				img = 'resources/images/weather/small/partly cloudy.gif';
			else if(sky == 3)
				img = 'resources/images/weather/small/mostly cloudy.gif';
			else if(sky == 4)
				img = 'resources/images/weather/small/clouding.gif';
		}
  		return img;
   	}
   	
   	function changePic(tag, wea){
   		switch(wea){
   			case '맑음':
   				$(tag).attr('src', 'resources/images/weather/big/clear.gif');
   				break;
   			case '구름조금':
   				$(tag).attr('src', 'resources/images/weather/big/partly cloudy.gif');
   				break;
   			case '구름많음':
   				$(tag).attr('src', 'resources/images/weather/big/mostly cloudy.gif');
   				break;
   			case '흐림':
   				$(tag).attr('src', 'resources/images/weather/big/clouding.gif');
   				break;
   			case '비':
   				$(tag).attr('src', 'resources/images/weather/big/rainy.gif');
   				break;
   		}
   	}
   	
   	function areaNum(when, hour){
   		var today = new Date();
	    var year = today.getFullYear();
	    var month = today.getMonth()+1;
	    var day = today.getDate();
	    var hours = today.getHours();
	    var minutes = today.getMinutes();
	    var time = '';
	    if(minutes < 10)
	    	minutes = '0' + minutes;
	    if(hours == 0)
	    	time = minutes;
	    else
	    	time = hours + '' + minutes;
	    
   		var all = 15;
   		var today = (21 - hour) / 3 + 1;
   		
   		if(time >= 2230 && all < 2400)
	    	today = 0;
   		all -= today;
   		var tom = 0;
   		var atom = 0;
   		if(all <= 8){
   			tom = all;
   		}else{
   			tom = 8;
   			atom = all - tom;
   		}
   		if(when == 'today')
   			return today;
   		else if(when == 'tom')
   			return tom;
   		else if(when == 'atom')
   			return atom;
   	}
   	
   	function areaThead(hour){
		var today = areaNum('today', hour);
		var tom = areaNum('tom', hour);
		var atom = areaNum('atom', hour);
   		var num = 0;
   		if(atom == 0)
   			num = 2;
   		else
   			num = 3;
		
   		$('.c_box .c_body .tldw_tbl thead tr th').remove();
   		for(i=0; i<num; i++){
   			if(i==0){
   				if(today > 0){
   					var tag = '<th scope="col" colspan="'+today+'">오늘</th>';
   					$('.c_box .c_body .tldw_tbl thead tr').append(tag);
   				}
   			} else if(i==1){
   				var tag = '<th scope="col" colspan="'+tom+'">내일</th>';
   				$('.c_box .c_body .tldw_tbl thead tr').append(tag);
   				if(i==num-1)
   					$('.c_box .c_body .tldw_tbl thead tr th:last-child').addClass('last');
   			} else if(i==2){
   				var tag = '<th scope="col" colspan="'+atom+'" class="last">모레</th>';
   				$('.c_box .c_body .tldw_tbl thead tr').append(tag);
   			}
   		}
   	}
   	
   	function areaForecast(hour, json){
   		areaThead(hour);
   		var today = areaNum('today', hour);
		var tom = areaNum('tom', hour);
		var atom = areaNum('atom', hour);
		var interval = getInterval(hour, calDate('today'), json, 'interval');
		var max = getInterval(hour, calDate('today'), json, 'max');
   		var min = getInterval(hour, calDate('today'), json, 'min');
		if(hour < 10)
   			hour = Number(hour.substring(1, hour.length));
		$('.c_box .c_body .tldw_tbl .w_info td').remove();
   		$('.c_box .c_body .tldw_tbl .d_tit td').remove();
   		var all = 0;

   		for(i=0; i<today; i++){
   			if(i!=0)
   				hour += 3;
   			var tag = '';
   			if(hour < 10){
   				var n_hour = '0' + hour;
   				tag = '<td><span class="img_ti img_ti'+n_hour+'">'+n_hour+'</span></td>';
   			}else
   				tag = '<td><span class="img_ti img_ti'+hour+'">'+hour+'</span></td>';
   			$('.c_box .c_body .tldw_tbl .d_tit').append(tag);
   			if(i == today-1){
   				$('.c_box .c_body .tldw_tbl .d_tit td:last-child').addClass('sep');
   				all += setVal(hour, calDate('today'), max, min, interval, json, all, 'sep');
   			}else
   				all += setVal(hour, calDate('today'), max, min, interval, json, all, '');
   		}
   		for(i=0; i<tom; i++){
   			if(today==0){
   				if(i!=0)
   					hour += 3;
   			}else
   				hour += 3;
   			if(hour == 24)
   				hour = 0;
   			var tag = '';
   			if(hour < 10){
   				var n_hour = '0' + hour;
   				tag = '<td><span class="img_ti img_ti'+n_hour+'">'+n_hour+'</span></td>';
   			}else
   				tag = '<td><span class="img_ti img_ti'+hour+'">'+hour+'</span></td>';
   			$('.c_box .c_body .tldw_tbl .d_tit').append(tag);
   			if(i == tom-1){
	   			if(atom != 0){
	   				$('.c_box .c_body .tldw_tbl .d_tit td:last-child').addClass('sep');
	   				all += setVal(hour, calDate('tom'), max, min, interval, json, all, 'sep');
	   			}
	   			else if(atom == 0){
	   				$('.c_box .c_body .tldw_tbl .d_tit td:last-child').addClass('last');
	   				all += setVal(hour, calDate('tom'), max, min, interval, json, all, 'last');
	   			}
   			}else
   				all += setVal(hour, calDate('tom'), max, min, interval, json, all, '');
   		}
   		for(i=0; i<atom; i++){
   			hour += 3;
   			if(hour == 24)
   				hour = 0;
   			var tag = '';
   			if(hour < 10){
   				var n_hour = '0' + hour;
   				tag = '<td><span class="img_ti img_ti'+n_hour+'">'+n_hour+'</span></td>';
   			}else
   				tag = '<td><span class="img_ti img_ti'+hour+'">'+hour+'</span></td>';
   			$('.c_box .c_body .tldw_tbl .d_tit').append(tag);
   			if(i == atom-1){
   				$('.c_box .c_body .tldw_tbl .d_tit td:last-child').addClass('last');
   				all += setVal(hour, calDate('atom'), max, min, interval, json, all, 'last');
   			}else
   				all += setVal(hour, calDate('atom'), max, min, interval, json, all, '');
   		}
   	}
   	
   	function getInterval(hour, date, json, kind){
   		var max, min;
   		var all = 0;
   		var when = 'today';
   		if(hour < 10)
				hour = Number(hour.substring(1, hour.length));

   		for(k=0; k<15; k++){
   			if(hour >= 24){
   				hour -= 24;
   				if(when == 'today'){
   					when = 'tom';
   					date = calDate('tom');
   				} else if(when == 'tom'){
   					when = 'atom';
   					date = calDate('atom');
   				}
   			}
   			if(hour < 10)
					hour = '0' + hour;
   			if(k==0){
   				max = json[0].response.body.items.item[all+getInfo(hour, 't3h')-1].fcstValue;
   				min = json[0].response.body.items.item[all+getInfo(hour, 't3h')-1].fcstValue;
   			}else{
   				if(max < json[0].response.body.items.item[all-1+getInfo(hour, 't3h')].fcstValue)
   					max = json[0].response.body.items.item[all-1+getInfo(hour, 't3h')].fcstValue;
   				if(min > json[0].response.body.items.item[all-1+getInfo(hour, 't3h')].fcstValue)
   					min = json[0].response.body.items.item[all-1+getInfo(hour, 't3h')].fcstValue;
   			}
   			all += getNum(hour, date, json);
   			if(hour < 10)
   				hour = Number(hour.substring(1, hour.length));
   			hour += 3;
   		}
   		if(kind == 'interval')
   			return Math.floor(72/(max-min));
   		else if(kind == 'max')
   			return max;
   		else if(kind == 'min')
   			return min;
   	}
   	
   	function checkForecastPic(sky, pty){
   		var result = '';
   		if(sky == 1)
   			result = '';
   		else if(sky == 2)
   			result = 'wss2';
   		else if(sky == 3)
   			result = 'wss21';
   		else if(sky == 4){
   			result = 'wss3';
   		}
   		if(pty == 1)
			result = 'wss4';
   		return result;
   	}
   	
   	function setVal(hour, date, max, min, interval, json, all, sep){
   		var t3h = 0;
   		var sky = 0;
   	   	var pty = 0;
   	   	var pop = 0;
   	   	var reh = 0;
   		if(hour < 10)
   			hour = '0' + hour;
   		if(all == 0){
   			t3h = json[0].response.body.items.item[getInfo(hour, 't3h')-1].fcstValue;
   			sky = json[0].response.body.items.item[getInfo(hour, 'sky')-1].fcstValue;
   			pty = json[0].response.body.items.item[getInfo(hour, 'pty')-1].fcstValue;
   			pop = json[0].response.body.items.item[getInfo(hour, 'pop')-1].fcstValue;
   			reh = json[0].response.body.items.item[getInfo(hour, 'reh')-1].fcstValue;
   		}
   		else{
   			t3h = json[0].response.body.items.item[all-1+getInfo(hour, 't3h')].fcstValue;
   			sky = json[0].response.body.items.item[all-1+getInfo(hour, 'sky')].fcstValue;
   			pty = json[0].response.body.items.item[all-1+getInfo(hour, 'pty')].fcstValue;
   			pop = json[0].response.body.items.item[all-1+getInfo(hour, 'pop')].fcstValue;
   			reh = json[0].response.body.items.item[all-1+getInfo(hour, 'reh')].fcstValue;
   		}
   		var wea = checkWea(sky, pty);
   		var tag = '<td>'+
				      '<div class="wi_wrap">'+
		                  '<div class="bl_ico" style="bottom: '+(t3h-min)*interval+'px">'+
			                  '<span class="temp">'+t3h+'</span> <img src="https://ssl.pstatic.net/sstatic/keypage/lifesrch/weather/img/b.gif" width="35" height="26" alt="'+wea+'" title="'+wea+'" class="wss">'+
		                  '</div>'+
	                  '</div>'+
                  '</td>';
        $('.c_box .c_body ._temp .tldw_tbl .w_info').append(tag);
        
        $('.c_box .c_body ._temp .tldw_tbl .w_info td:last-child').addClass(sep);

        if(t3h == max)
        	$('.c_box .c_body ._temp .tldw_tbl .w_info td:last-child span').addClass('tp_max');
        
        $('.c_box .c_body ._temp .tldw_tbl .w_info td:last-child img').addClass(checkForecastPic(sky, pty));
        
      	//---------------------------------------------강수확률---------------------------------------------
      	
        tag = '<td>'+
		          '<div class="wi_wrap">'+
	    	           '<div class="bl_bar">'+
			               '<span class="scal">'+pop+'</span>'+
			                   '<div class="gb_wrap">'+
				                   '<span class="g_bar" style="height: '+pop+'px;"><span></span></span>'+
			                   '</div>'+
		               '</div>'+
	              '</div>'+
              '</td>';
      	$('.c_box .c_body ._rain .tldw_tbl .w_info_v2').append(tag);

        $('.c_box .c_body ._rain .tldw_tbl .w_info_v2 td:last-child').addClass(sep);
        
      //-----------------------------------------------습도-----------------------------------------------
      
      tag = '<td>'+
		          '<div class="wi_wrap">'+
	    	           '<div class="bl_bar bl_bar_v2">'+
			               '<span class="scal">'+reh+'</span>'+
			                   '<div class="gb_wrap">'+
				                   '<span class="g_bar" style="height: '+reh+'px;"><span></span></span>'+
			                   '</div>'+
		               '</div>'+
	              '</div>'+
              '</td>';
              
      	$('.c_box .c_body ._humi .tldw_tbl .w_info_v2').append(tag);

        $('.c_box .c_body ._humi .tldw_tbl .w_info_v2 td:last-child').addClass(sep);
 
        return getNum(hour, date, json);
   	}
   	
   	function measureAirPollution(_nx, _ny){
   		var rs = {};
   		rs = dfs_xy_conv('toLL', _nx, _ny, rs);
   		var latitude = rs['lat'];
   		var longitude = rs['lng'];
   		
   		var url = 'https://apis.daum.net/local/geo/transcoord';
   		url += '?apikey=bfe1aaa6425532e71b90eb50fa254710';
   		url += '&fromCoord=WGS84';
   		url += '&y='+latitude;
   		url += '&x='+longitude;
   		url += '&toCoord=TM&output=json';
   		var tmX = 0;
   		var tmY = 0;
   		
   		$.ajax({
   			type: 'POST',
   			url: 'weatherData',
   			dataType: 'json',
   			data: {url:url},
   			async: false,
   			success: function(data){
   				tmX = data.x;
   				tmY = data.y;
   			}
   		});
   		
   		var stationName = '';
   		var addr = '';
   		var tm = 0;
   		
   		url = 'http://openapi.airkorea.or.kr/openapi/services/rest/MsrstnInfoInqireSvc/getNearbyMsrstnList';
		url += '?tmX='+tmX+'&tmY='+tmY;
		url += '&pageNo=1&numOfRows=10';
		url += '&ServiceKey=iM9M1hAu2%2B1oPsCuLxmIBdYTlMT09RILXSt%2FnGIWpYysavoQ4nW0gZzjYP87%2FOGpmzrJdC8NQBfAXzdlKzmx1Q%3D%3D';
		url += '&_returnType=json';

		$.ajax({
   			type: 'POST',
   			url: 'weatherData',
   			dataType: 'json',
   			data: {url:url},
   			async: false,
   			success: function(data){
   				stationName = data.list[0].stationName;
   				addr = data.list[0].addr;
   				tm = data.list[0].tm;
   			}
		});
		
		$.ajax({
			type: 'POST',
			url: 'weatherData',
   			dataType: 'json',
   			data: {stationName:stationName},
   			success: function(data){
   				var pm10 = data.list[0].pm10Value;
   				var status = '';
   				var range = '';
   				var cla = '';
   				
   				if(pm10 == '-'){
   					$('.weather_wrap .info p a span:first-child em').text(pm10);
	   				$('.weather_wrap .info p a span:first-child em').removeClass();
	   				
   					$('.w_now2 .fl p a span:first-child').text(pm10);
	   				$('.w_now2 .fl p a span:first-child').removeClass();
	   				$('.w_now2 .fl p a span:first-child').addClass('atm');
	   				
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:first-child .ly_data').text(pm10);
					$('.weather_wrap .info ._fine_dust_exp dl dt:first-child strong').text("측정소 데이터가 없습니다.");
					$('.weather_wrap .info ._fine_dust_exp dl dt:first-child strong').removeClass();
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:first-child strong').addClass('toobad');
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:first-child .ly_data2').text('');
	   				
   					$('.w_now2 .fl ._fine_dust_exp dl dt:first-child .ly_data').text(pm10);
   					$('.w_now2 .fl ._fine_dust_exp dl dt:first-child strong').text("측정소 데이터가 없습니다.");
   					$('.w_now2 .fl ._fine_dust_exp dl dt:first-child strong').removeClass();
   	   				$('.w_now2 .fl ._fine_dust_exp dl dt:first-child strong').addClass('toobad');
   	   				$('.w_now2 .fl ._fine_dust_exp dl dt:first-child .ly_data2').text('');
   				}else {
   	   				pm10 = addPrime(pm10, checkPrime(pm10));
   	   				status = checkFineDust(pm10, 'status');
   	   				range = checkFineDust(pm10, 'range');
   	   				cla = checkClass(status);
   	   				
   	   				$('.weather_wrap .info p a span:first-child em').text(status);
   					$('.weather_wrap .info p a span:first-child em').removeClass();
   					$('.weather_wrap .info p a span:first-child em').addClass(cla);
   	   				
	   				$('.w_now2 .fl p a span:first-child').text(status);
	   				$('.w_now2 .fl p a span:first-child').removeClass();
	   				$('.w_now2 .fl p a span:first-child').addClass('atm '+cla);
	   				
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:first-child .ly_data').text(pm10+'㎍/㎥');
					$('.weather_wrap .info ._fine_dust_exp dl dt:first-child strong').text(status);
					$('.weather_wrap .info ._fine_dust_exp dl dt:first-child strong').removeClass();
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:first-child strong').addClass(cla);
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:first-child .ly_data2').text(range);
	   				
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:first-child .ly_data').text(pm10+'㎍/㎥');
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:first-child strong').text(status);
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:first-child strong').removeClass();
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:first-child strong').addClass(cla);
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:first-child .ly_data2').text(range);
   				}
   				
   				var o3value = data.list[0].o3Value;
   				if(o3value == '-'){
   					$('.weather_wrap .info p a span:nth-child(3) em').text(o3value);
   					$('.weather_wrap .info p a span:nth-child(3) em').removeClass();
   					
   					$('.w_now2 .fl p a span:last-child').text(o3value);
	   				$('.w_now2 .fl p a span:last-child').removeClass();
	   				$('.w_now2 .fl p a span:last-child').addClass('atm');
	   				
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:nth-child(2) .ly_data').text(o3value);
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) strong').text("측정소 데이터가 없습니다.");
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) strong').removeClass();
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) strong').addClass('toobad');
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) .ly_data2').text('');
	   				
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:nth-child(2) .ly_data').text(o3value);
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) strong').text("측정소 데이터가 없습니다.");
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) strong').removeClass();
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) strong').addClass('toobad');
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) .ly_data2').text('');
   				}else {
   					status = checkOzone(o3value, 'status');
   	   				range = checkOzone(o3value, 'range');
   	   				cla = checkClass(status);
   	   				
   	   				$('.weather_wrap .info p a span:nth-child(3) em').text(status);
					$('.weather_wrap .info p a span:nth-child(3) em').removeClass();
					$('.weather_wrap .info p a span:nth-child(3) em').addClass(cla);
   	   				
	   				$('.w_now2 .fl p a span:last-child').text(status);
	   				$('.w_now2 .fl p a span:last-child').removeClass();
	   				$('.w_now2 .fl p a span:last-child').addClass('atm '+cla);
	   				
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:nth-child(2) .ly_data').text(o3value+'ppm');
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) strong').text(status);
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) strong').removeClass();
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) strong').addClass(cla);
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(3) .ly_data2').text(range);
	   				
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:nth-child(2) .ly_data').text(o3value+'ppm');
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) strong').text(status);
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) strong').removeClass();
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) strong').addClass(cla);
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(3) .ly_data2').text(range);
   				}
   				
   				var khaivalue = data.list[0].khaiValue;
   				if(khaivalue == '-'){
   					$('.weather_wrap .info ._fine_dust_exp dl dt:nth-child(4) .ly_data').text(khaivalue);
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) strong').text("측정소 데이터가 없습니다.");
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) strong').removeClass();
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) strong').addClass('toobad');
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) .ly_data2').text('');
	   				
   					$('.w_now2 .fl ._fine_dust_exp dl dt:nth-child(4) .ly_data').text(khaivalue);
   					$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) strong').text("측정소 데이터가 없습니다.");
   					$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) strong').removeClass();
   	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) strong').addClass('toobad');
   	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) .ly_data2').text('');
   				}else {
	   				khaivalue = addPrime(khaivalue, checkPrime(khaivalue));
	   				status = checkKhai(khaivalue, 'status');
	   				range = checkKhai(khaivalue, 'range');
	   				cla = checkClass(status);
	   				
	   				$('.weather_wrap .info ._fine_dust_exp dl dt:nth-child(4) .ly_data').text(khaivalue);
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) strong').text(status);
					$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) strong').removeClass();
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) strong').addClass(cla);
	   				$('.weather_wrap .info ._fine_dust_exp dl dd:nth-child(5) .ly_data2').text(range);
	
	   				$('.w_now2 .fl ._fine_dust_exp dl dt:nth-child(4) .ly_data').text(khaivalue);
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) strong').text(status);
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) strong').removeClass();
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) strong').addClass(cla);
	   				$('.w_now2 .fl ._fine_dust_exp dl dd:nth-child(5) .ly_data2').text(range);
   				}
   				
   				var datatime = data.list[0].dataTime;
   				
   				var arr = datatime.split("-");
   				
   				var month = arr[1];
   				
   				if(month < 10)
   					month = Number(month.substring(1, month.length));
   				
   				var date = arr[2].split(' ')[0];
   				
   				if(date < 10)
   					date = Number(date.substring(1, date.length));
   				
   				var time = arr[2].split(' ')[1];
   				
   				var all = month + '.' + date + '.' + ' ' + time;
   				
   				var tag = addr + ' 측정소 (해당 지점으로부터 +'+ tm + 'km)' + '<span class="bar">|</span><span>업데이트 '+all+'</span><br>';
   				
   				$('.weather_wrap .info ._fine_dust_exp .chk_place').html(tag);
   				
   				$('.w_now2 .fl ._fine_dust_exp .chk_place').html(tag);
   			}
		});
   	}
   	
   	function checkPrime(num){
   		var flag = false;
   		for (var i=0; i < num.length; i++){
   			if (num.charAt(i) == "."){
   				flag = true;
   				break;
			}
 		}
   		return flag;
   	}
   	
   	function addPrime(num, check){
   		if(!check)
   			num += '.0';
   		return num;
   	}
   	
   	function checkFineDust(value, kind){
   		var status = '';
   		var range = '';
   		if(value>=0 && value<=30){
   			status = '좋음';
   			range = '(0-30)';
   		}
   		else if(value>=31 && value<=80){
   			status = '보통';
   			range = '(31-80)';
   		}
   		else if(value>=81 && value<=120){
   			status = '약간 나쁨';
   			range = '(81-120)';
   		}
   		else if(value>=121 && value<=200){
   			status = '나쁨';
   			range = '(121-200)';
   		}
   		else if(value>=201 && value<=300){
   			status = '매우 나쁨';
   			range = '(201-300)';
   		}
   		else if(value >= 301){
   			status = '위험';
   			range = '(301-)';
   		}
   		if(kind == 'status')
   			return status;
   		else if(kind == 'range')
   			return range;
   	}
   	
   	function checkOzone(value, kind){
   		var status = '';
   		var range = '';
   		if(value>=0 && value<=0.030){
   			status = '좋음';
   			range = '(0-0.030)';
   		}
   		else if(value>=0.031 && value<=0.090){
   			status = '보통';
   			range = '(0.031-0.090)';
   		}
   		else if(value>=0.091 && value<=0.150){
   			status = '나쁨';
   			range = '(0.091-0.150)';
   		}
   		else if(value>=0.151){
   			status = '매우나쁨';
   			range = '(0.151-)';
   		}
   		if(kind == 'status')
   			return status;
   		else if(kind == 'range')
   			return range;
   	}
   	
   	function checkKhai(value, kind){
   		var status = '';
   		var range = '';
   		if(value>=0 && value<=50){
   			status = '좋음';
   			range = '(0-50)';
   		}
   		else if(value>=51 && value<=100){
   			status = '보통';
   			range = '(51-100)';
   		}
   		else if(value>=101 && value<=250){
   			status = '나쁨';
   			range = '(101-250)';
   		}
   		else if(value>=251){
   			status = '매우나쁨';
   			range = '(251-)';
   		}
   		if(kind == 'status')
   			return status;
   		else if(kind == 'range')
   			return range;
   	}
   	
   	function checkClass(status){
   		var cla = '';
   		if(status == '좋음')
   			cla = 'good';
   		else if(status == '보통')
   			cla = 'normal';
 		else if(status == '약간 나쁨')
 			cla = 'bitbad';
 		else if(status == '나쁨')
 			cla = 'bad';
 		else if(status == '매우 나쁨' || status == '위험')
 			cla = 'toobad';
   		return cla;
   	}
   	
   	$('.w_now2 .fl ._fine_dust_exp_open').click(function(){
   		$('.w_now2 .fl ._fine_dust_exp').show();
   	});
   	
   	$('.w_now2 .fl ._fine_dust_exp_close').click(function(){
   		$('.w_now2 .fl ._fine_dust_exp').hide();
   	});
   	
   	$('.info p a').click(function(){
   		$('.info ._fine_dust_exp').show();
   	});
   	
   	$('.info ._fine_dust_exp_close').click(function(){
   		$('.info ._fine_dust_exp').hide();
   	});
   	
   	/* $(document).keyup(function(){
  		navigator.geolocation.getCurrentPosition(function(position){
  			var rs = {};
  			rs = dfs_xy_conv('toLL', 60, 127, rs);
  		    alert('latitude: ' + rs['lat']);
  		    alert('longitude: ' + rs['lng']);
  		    alert(position.coords.latitude);
  		    alert(position.coords.longitude);
  		}, function(){}, {enableHighAccuracy:true});
  		 realTimeWeather(); 
   }); */ 
   
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
				  if($('#region_marea_list').html() != ''){
					  $('#region_marea_header').show();
					  $('#region_sarea_header').show();
				      $('#region_marea_header').addClass('on');
					  $('#region_marea_list_wrapper').show();
				  }else{
					  $('#region_marea_header').hide();
					  $('#region_sarea_header').hide();
				  }
			  }
		   });
	   }
	   
	   else if($(this).closest('ul').attr('id') == 'region_marea_list'){
		   $('#region_sarea_header .input_zone').text('동/읍/면');
		   
		   $('#region_sarea_list').html('');
		   
		   var si = $('#region_larea_header .input_zone').text();
		   var gu = text;
		   
		   if(si == '세종특...')
			   si = '세종특별자치시';
		   
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
				  if($('#region_sarea_list').html() != ''){
					  $('#region_sarea_header').show();
					  $('#region_sarea_header').addClass('on');
					  $('#region_sarea_list_wrapper').show();
				  }else
					  $('#region_sarea_header').hide();
			  }
		   });
	   }
   })
   
   $('.btn_inquire').click(function(){
	   var larea = $('#region_larea_header .input_zone').text();
	   var marea = $('#region_marea_header .input_zone').text();
	   var sarea = $('#region_sarea_header .input_zone').text();
	   
	   if(larea == '세종특...')
		   larea = '세종특별자치시';
	   if(marea == '세종특...')
		   marea = '세종특별자치시';
	   
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
				   measureAirPollution(data.gridX, data.gridY);
			   }
		   })
	   }
   });
   
   $('.c_box .c_body .tldw_mnu li').click(function(){
	   $('.c_box .c_body .tldw_mnu li').each(function(){
		  $(this).removeClass('on'); 
	   });
	   $(this).addClass('on');
	   $('._thweather > div').each(function(){
		   $(this).hide();
	   });
	   if($(this).hasClass('_btntemp'))
		   $('._temp').show();
	   else if($(this).hasClass('_btnrain'))
		   $('._rain').show();
	   else if($(this).hasClass('_btnhumi'))
		   $('._humi').show();
   });
   
   /* $('document :not(.layer_popup, .ipt *)').on('click', function(){
	  alert('a');
   }); */
</script>
</body>
</html>