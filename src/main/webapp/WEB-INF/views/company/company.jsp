<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/WEB-INF/views/temp/bootStrap.jsp"></c:import>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script type="text/javascript" src="resources/js/bootstrap-filestyle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.form.js"></script>
<script type="text/javascript">
	/* var originalNode; */
	var originalText;
	
	$(function(){
		$(":file").filestyle();
		time(30);
	})
	
	function time(minutes){
		$('#stime').replaceWith('<input class="form-control" id="stime" name="stime" style="text-align: center;" readonly="readonly">');
		$('#etime').replaceWith('<input class="form-control" id="etime" name="etime" style="text-align: center;" readonly="readonly">');
		$('#stime').timepicker({
    	    timeFormat: 'H:mm p',
    	    interval: minutes,
    	    minTime: '0:00am',
    	    maxTime: '12:00pm',
    	    defaultTime: '0:00am',
    	    startTime: '0:00am',
    	    dynamic: false,
    	    dropdown: true,
    	    scrollbar: true
    	});
		if(minutes == 30)
			$('#etime').timepicker({
	    	    timeFormat: 'H:mm p',
	    	    interval: minutes,
	    	    minTime: '12:30pm',
	    	    maxTime: '11:30pm',
	    	    defaultTime: '12:30pm',
	    	    startTime: '12:30pm',
	    	    dynamic: false,
	    	    dropdown: true,
	    	    scrollbar: true
	    	});
		else if(minutes == 60)
			$('#etime').timepicker({
	    	    timeFormat: 'H:mm p',
	    	    interval: minutes,
	    	    minTime: '13:00pm',
	    	    maxTime: '11:00pm',
	    	    defaultTime: '13:00pm',
	    	    startTime: '13:00pm',
	    	    dynamic: false,
	    	    dropdown: true,
	    	    scrollbar: true
	    	});
	}
	
	function timeChange(el){
		if(el.value == '30분'){
			$(el).next('input[name="revInterval"]').val(30);
			time(30);
		}
		else if(el.value == '1시간'){
			$(el).next('input[name="revInterval"]').val(60);
			time(60);
		}
	}
	
	function seTime(el){
		var time = $(el).val().split(' ')[0];
		var hour = time.split(':')[0];
		var minutes = time.split(':')[1];
		var time = hour+minutes;
		if(time.length == 3)
			time = '0' + time;
		$(el).next('input').val(time);
	}
	
	function periodChange(el){
		if(el.value == '1주')
			$(el).next('input[name="period"]').val(7);
		else if(el.value == '2주')
			$(el).next('input[name="period"]').val(14);
		else if(el.value == '3주')
			$(el).next('input[name="period"]').val(21);
	}
	
	function fileSave(obj){
		/* originalNode = obj.cloneNode(true); */
		originalText = $('.bootstrap-filestyle > .form-control').val();
		//alert($('#inputphoto').val());
	}

	function fileCheck(obj) {
		var file_kind = obj.value.lastIndexOf('.');
		var file_name = obj.value.substring(file_kind+1,obj.length);
		var file_type = file_name.toLowerCase();
		var check_file_type = new Array();
		check_file_type=['jpg','gif','png','jpeg','bmp'];
		
		if(check_file_type.indexOf(file_type)==-1 && obj.value.length > 0){
			alert('이미지 파일만 선택할 수 있습니다.');
		  	/* var parent_Obj=obj.parentNode
		  	var node=parent_Obj.replaceChild(originalNode,obj); */
		  	$('#uploadimg').attr('src', 'resources/images/no-photo.png');
	  		$(":file").filestyle('clear');
			//$('.bootstrap-filestyle > .form-control').val(originalText);
			/* return false; */
		} else if(obj.value.length == 0){
			$('#uploadimg').attr('src', 'resources/images/no-photo.png');
		} else{
			if (obj.files && obj.files[0]) {
		        var reader = new FileReader();
		        reader.onload = function (e) {
		            $('#uploadimg').attr('src', e.target.result);
		        }
		        reader.readAsDataURL(obj.files[0]);
		    }
		}
	}
	
	function mphon( obj ) {
		obj.value =  PhonNumStr( obj.value );
	} 
	
	function _mphon( val ) {
		document.write(PhonNumStr( val ));
  	}
	
	function PhonNumStr(str) {
		var RegNotNum = /[^0-9]/g;
		var RegPhonNum = "";
		var DataForm = "";

		// return blank    
		if (str == "" || str == null)
			return "";

		// delete not number
		str = str.replace(RegNotNum, '');

		/* 4자리 이하일 경우 아무런 액션도 취하지 않음. */
		if (str.length < 4)
			return str;
		/* 지역번호 02일 경우 10자리 이상입력 못하도록 제어함. */
		if (str.substring(0, 2) == "02" && str.length > 10) {
			str = str.substring(0, 10);
		}
		if (str.length > 3 && str.length < 7) {
			if (str.substring(0, 2) == "02") {
				DataForm = "$1-$2";
				RegPhonNum = /([0-9]{2})([0-9]+)/;
			} else {
				DataForm = "$1-$2";
				RegPhonNum = /([0-9]{3})([0-9]+)/;
			}
		} else if (str.length == 7) {
			if (str.substring(0, 2) == "02") {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{2})([0-9]{3})([0-9]+)/;
			} else {
				DataForm = "$1-$2";
				RegPhonNum = /([0-9]{3})([0-9]{4})/;
			}
		} else if (str.length == 9) {
			if (str.substring(0, 2) == "02") {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{2})([0-9]{3})([0-9]+)/;
			} else {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{3})([0-9]{3})([0-9]+)/;
			}
		} else if (str.length == 10) {
			if (str.substring(0, 2) == "02") {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{2})([0-9]{4})([0-9]+)/;
			} else {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{3})([0-9]{3})([0-9]+)/;
			}
		} else if (str.length > 10) {
			if (str.substring(0, 2) == "02") {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{2})([0-9]{4})([0-9]+)/;
			} else {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{3})([0-9]{4})([0-9]+)/;
			}
		} else {
			if (str.substring(0, 2) == "02") {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{2})([0-9]{3})([0-9]+)/;
			} else {
				DataForm = "$1-$2-$3";
				RegPhonNum = /([0-9]{3})([0-9]{3})([0-9]+)/;
			}
		}

		while (RegPhonNum.test(str)) {
			str = str.replace(RegPhonNum, DataForm);
		}
		return str;
	}
	
	function mnum( obj ) {
		obj.value = numStr( obj.value );
	} 
	
	function numStr(str) {
		var RegNotNum = /[^0-9]/g;
		var RegNum = "";
		var DataForm = "";
		
		// return blank    
		if (str == "" || str == null)
			return "";

		// delete not number
		str = str.replace(RegNotNum, '');

		/* 4자리 이하일 경우 아무런 액션도 취하지 않음. */
		if (str.length < 4)
			return str;

		if (str.length > 3 && str.length <= 5) {
			DataForm = "$1-$2";
			RegNum = /([0-9]{3})([0-9]+)/;
		} else if (str.length > 5 && str.length <= 10) {
			DataForm = "$1-$2-$3";
			RegNum = /([0-9]{3})([0-9]{2})([0-9]+)/;
		}
		while (RegNum.test(str)) {
			str = str.replace(RegNum, DataForm);
		}
		return str;
	}
	
	function numberCheck(str){
		var obj = str;
		
		var RegNotNum = /[^0-9]/g;
		
		// return blank    
		if (str.value == "" || str.value == null)
			return "";

		// delete not number
		str.value = str.value.replace(RegNotNum, '');
		
		obj.value = str.value;
	}
	
	function addinfo(el){
		if($(el).is(":checked"))
			window.open('companyAddInfo', 'addinfo', 'width=320, height=680');
		else if(!$(el).is(":checked")){
			$('input[name="notice"]').val('');
			$('input[name="addInfo"]').val('');
		}
		setTimeout(function() {
			el.checked = false;
		}, 50); 
	}
</script>
<style type="text/css">
	#frame{
		text-align: center;
	}
	#frame #inputphoto{
		margin-top: 10px;
	}
	#inner_frame{
		padding: 10px 10px 0;
		background: #d8d8d8;
		width: 320px;
		margin: 0 auto;
	}
	#inner_frame table input{
		display: inline-block;
		width: 234px;
		margin-bottom: 10px;
	    margin-left: 9px;
	}
	#inner_frame table select{
		display: inline-block;
		width: 80px;
		margin-bottom: 10px;
	    margin-left: 9px;
	}
	#inner_frame table select option{
	    text-align-last: center; 
	}
	#inner_frame table label{
		height: 20px;
	}
	#inner_frame table label[for="cNum"],
	#inner_frame table label[for="peopleNum"]{
		vertical-align: super;
	}
	textarea[name="cPlace"]{
		width: 234px;
		height: 68px;
		margin-left: 9px;
		margin-bottom: 6px;
		resize: none;
	}
	#inner_frame #uploadimg{
		display: block;
		width: 300px;
		height: 200px;
	}
	.bootstrap-filestyle{
		margin: 10px 0;
	}
	#search{
		width: 50px;
		height: 25px;
		margin-left: -1px;
	    margin-top: -3px;
	}
	input[name="revMin"],
	input[name="revMax"]{
		width: 80px !important;
	}
	input[name="cNum"],
	input[name="peopleNum"]{
		vertical-align: bottom;
	}
	#add{
		width: 20px !important;
	    height: 20px;
	    margin: 0 0 0 9px !important;
	    vertical-align: middle;
	}
	#register{
		margin-top: 5px; 
		margin-bottom: 10px;
	}
</style>
</head>
<body>
	<div id="frame">
		<div id="inner_frame">
			<form action="" id="frm" enctype="multipart/form-data">
				<img id="uploadimg" alt="사진" src="resources/images/no-photo.png">
				<input type="file" id="inputphoto" name="m" class="filestyle" data-icon="false" data-buttonText="사진 등록" data-placeholder="선택된 사진이 없습니다." onclick="fileSave(this)" onchange="fileCheck(this)" accept="image/*">
				<table>
					<tr>
						<td><label for="cName">업체명</label></td>
						<td><input type="text" id="cName" name="cName" class="form-control">
					</tr>
					<tr>
						<td><label for="rName">대표자명</label></td>
						<td><input type="text" id="rName" name="rName" class="form-control"></td>
					</tr>
					<tr>
						<td style="vertical-align: middle;">
							<label for="cPlace">소재지</label>
							<button id="search" onclick="window.open('address', 'address', 'width=500, height=500'); return false;">검색</button>
						</td>
						<td rowspan="2" style="display: inline-block;"><textarea id="cPlace" name="cPlace" readonly="readonly"></textarea></td>
					</tr>
					<tr>
						<td><label for="cPhone">연락처</label></td>
						<td><input type="text" maxlength="13" onkeydown="mphon(this);" onkeyup="mphon(this);" id="cPhone" name="cPhone" class="form-control"></td>
					</tr>
					<tr>
						<td><label for="cNum">사업자<br>등록번호</label></td>
						<td><input type="text" maxlength="12" onkeydown="mnum(this)" onkeyup="mnum(this)" id="cNum" name="cNum" class="form-control"></td>
					</tr>
					<tr>
						<td><label for="revInterval">시간간격</label></td>
						<td>
							<select class="form-control" onchange="timeChange(this)" style="padding: 0 0 0 16px;">
								<option>30분</option>
								<option>1시간</option>
							</select>
							<input type="hidden" name="revInterval" value="30">
							<label for="period">예약기간</label>
							<select class="form-control" onchange="periodChange(this)" style="padding: 0 0 0 22px;">
								<option>1주</option>
								<option>2주</option>
								<option>3주</option>
							</select>
							<input type="hidden" name="period" value="7">
						</td>
					</tr>
					<tr>
						<td><label for="stime">시작시간</label></td>
						<td><input class="form-control" id="stime" name="stime" style="text-align: center;" readonly="readonly">
						<input type="hidden" name="sTime"></td>
					</tr>
					<tr>
						<td><label for="etime">마감시간</label></td>
						<td><input class="form-control" id="etime" name="etime" style="text-align: center;" readonly="readonly">
						<input type="hidden" name="eTime"></td>
					</tr>
					<tr>
						<td><label for="revMin">최소인원</label></td>
						<td>
							<input class="form-control" id="revMin" name="revMin" onkeydown="numberCheck(this)" onkeyup="numberCheck(this)">
							<label for="revMax">최대인원</label>
							<input class="form-control" id="revMax" name="revMax" onkeydown="numberCheck(this)" onkeyup="numberCheck(this)">
						</td>
					</tr>
					<tr>
						<td><label for="peopleNum">시간당<br>수용인원</label></td>
						<td>
							<input class="form-control" id="peopleNum" name="peopleNum" onkeydown="numberCheck(this)" onkeyup="numberCheck(this)">
						</td>
					</tr>
					<tr>
						<td><label for="add">추가정보</label></td>
						<td style="text-align: left;"><input type="checkbox" id="add" onclick="addinfo(this)">
						<span style="font-size: 11px;">(체크를 해제하면 추가 정보가 삭제됩니다.)</span></td>
						<td><input type="hidden" name="notice"></td>
						<td><input type="hidden" name="addInfo"></td>						
					</tr>
				</table>
			</form>
			<button id="register">업체등록</button>
		</div>
	</div>
	<script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
	<script type="text/javascript">
		$('#register').click(function(){
			seTime($('input[name="stime"]'));
			seTime($('input[name="etime"]'));
			$('#frm').ajaxForm({
				url: 'companyWrite',
				enctype: 'multipart/form-data',
				type: 'POST',
				success: function(data){
					alert(data);
				}
			});
			$('#frm').submit();
		});
	</script>
</body>
</html>