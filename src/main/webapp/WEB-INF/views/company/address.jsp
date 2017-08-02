<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<style>
	#box{
		width: 500px; 
		border: 1px solid #cfcfd0;
	    background: #f8f8f9;
	    padding: 10px 14px;
	    border-radius: 3px;
	    line-height: 180%;
	    margin: 0 auto;
	    font-size: 13px;
	    overflow: auto;
	    max-height: 500px;
	    text-align: center;
	}
	#postcodify{
		text-align: center;
	}
	#postcodify input{
		width: 350px;
		height: 24px;
	}
	#postcodify button,
	#box button{
		height: 24px;
	    vertical-align: bottom;
	    margin-left: 8px;
	    float: none;
	    position: static;
	    margin-left: 5px;
	    width: 48px !important;
	    border: 1px solid #49494b;
	    background: #49494b;
	    color: #fff;
	    font-size: 12px;
	    font-weight: bold;
	    cursor: pointer;
	}
	table{
		margin: 0 auto;
	}
	table tr td:nth-child(2){
		text-align: justify;
	}
	table input[type="text"]{
		width: 350px;
		margin-left: 8px;
		margin-bottom: 8px;
		height: 24px;
	}
	
	table input[type="checkbox"]{
		width: 20px;
	    height: 20px;
	    position: absolute;
	    margin-top: 2px;
	    margin-left: 8px;
	}
</style>
<script type="text/javascript">
	$(function() { 
		$("#postcodify").postcodify({
		    insertPostcode5 : "#input1",
		    insertAddress : "#input2",
		    insertJibeonAddress : "#input3",
		    insertDetails : "#input4",
		    insertExtraInfo : "#input5",
		    //insertEnglishAddress : "#ex2_input5",
		    hideOldAddresses : false,
		    forceDisplayPostcode5 : true,
		    focusKeyword : false,
		    afterSelect : function() {
		        $("#postcodify").find(".postcodify_search_result,.postcodify_search_status").remove();
		    },
		    onReady: function() {
		        $("#guide_content div.section input.keyword").each(function() {
		            $(this).width($(this).parents("div.section").width() - 130);
		        });
		    }
		}); 
	});
	
	function insert(){
		var address;
		var input2 = $('#input2').val();
		var input3 = $('#input3').val();
		var input4 = $('#input4').val();
		var input5 = $('#input5').val();
		if($('#input2').next('input[type="checkbox"]').is(':checked')){
			if(input4 != '')
				address = input2 + ', ' + input4 + input5;
			else
				address = input2 + input5;
		} else if($('#input3').next('input[type="checkbox"]').is(':checked')){
			if(input4 != '')
				address = input3 + ' ' + input4;
			else
				address = input3;
		}
		$('#cPlace', opener.document).val(address);
		window.close();
	}
	
	function checkBox(el){
		var item_checkbox = $(el).closest('table');
		var checkbox = item_checkbox.find('input[type="checkbox"]');
		var check = false;
		checkbox.each(function(){
			if(el != this)
			this.checked = false;
			if(this.checked == true)
				check = true;
		});
		if(!check)
			el.checked = true;
	}
</script>
</head>
<body>
	<div id="box">
		<div id="postcodify"></div>
		<table>
			<tr>
				<td><label for="input1">우편번호</label></td>
				<td><input type="text" id="input1" style="width: 60px;" readonly="readonly"></td>
			</tr>
			<tr>
				<td><label for="input2">도로명주소</label></td>
				<td><input type="text" id="input2" readonly="readonly"><input type="checkbox" onclick="checkBox(this)" checked="checked"></td>
			</tr>
			<tr>
				<td><label for="input3">지번주소</label></td>
				<td><input type="text" id="input3" readonly="readonly"><input type="checkbox" onclick="checkBox(this)"></td>
			</tr>
			<tr>
				<td><label for="input4">상세주소</label></td>
				<td><input type="text" id="input4"></td>
			</tr>	
			<tr>
				<td><label for="input5">참고항목</label></td>
				<td><input type="text" id="input5" readonly="readonly"></td>
			</tr>
		</table>
		<span style="margin-top: 10px; display: block;">주소 검색 후, 도로명/지번주소 중 하나를 선택해주세요.<br>
		 도로명주소는 입력하신 상세주소와 참고항목을 함께<br>사용하지만 지번주소는 상세주소만을 사용합니다.</span>
		<button style="margin: 0 auto; display: block; margin-top: 20px; margin-bottom: 8px; line-height: 20px;" onclick="insert()">입력</button>
	</div>
</body>
</html>