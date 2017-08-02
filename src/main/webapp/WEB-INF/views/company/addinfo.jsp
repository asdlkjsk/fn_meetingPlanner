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
<link rel="stylesheet" href="resources/css/messagebox.css">
<script type="text/javascript" src="resources/js/messagebox.js"></script>
<style type="text/css">
	#frame{
		text-align: center;
	}
	#inner_frame{
		position: relative;
		padding: 10px 10px 0;
		background: #d8d8d8;
		width: 320px;
		margin: 0 auto;
	}
	#inner_frame table label{
		height: 20px;
	}
	#inner_frame table .ck{
        width: 18px;
    	height: 18px;
    	vertical-align: middle;
    	margin-bottom: 5px;
    	margin-right: 6px;
    }
    #inner_frame table .ck_box_ex{
        width: 22px;
    	height: 22px;
   		vertical-align: middle;
    	margin-bottom: 6px;
    	margin-right: 2px;
    }
	#inner_frame table input[type="text"]{
		width: 300px;
		margin-bottom: 8px;
	}
	#inner_frame table input[type="text"].title{
		width: 274px;
		margin-bottom: 8px;
		background-color: rgb(112, 118, 193);
    	color: white;
	}
	#inner_frame table input[type="text"].ck_box_input{
		width: 274px;
		margin-bottom: 8px;
	}
	#inner_frame table textarea{
		width: 300px;
		height: 100px;
		resize: vertical;
		margin-bottom: 2px;
	}
	#addinfo{
	    position: absolute;
	    top: 10px;
	    right: 0;
	    margin-right: 10px;
	    font-weight: 600;
	    font-size: 12px;
	    cursor: pointer;
	}
	#addinfo #plus{
	    color: #e01010;
    	font-size: 15px;
    	line-height: 18px;
    	vertical-align: bottom;
	}
	#addbox{
		display: none;
    	width: 100px;
	    height: 100px;
	    background-color: rgba(236, 236, 236, 1);
	    position: absolute;
	    top: 35px;
	    right: 0;
	    padding: 5px;
    	border: 1px solid black;
	}
	#addbox input[type="checkbox"]{
		vertical-align: top;
	}
	.x{
	    position: absolute;
    	right: -8px;
    	top: -12px;
    	font-size: 16px;
    	font-weight: bold;
    	cursor: pointer;
   	    opacity: 0.6;
	}
	.x:hover{
		opacity: 1;
	}
	.plus{
		position: absolute;
	    font-size: 16px;
	    font-weight: bold;
	    cursor: pointer;
	    opacity: 0.6;
	    bottom: -5px;
	    left: -9px;
	}
	.plus:hover{
		opacity: 1;
	}
	#use{
		display: none;
		text-align: justify;
		font-size: 12px;
	    width: 300px;
    	background-color: rgb(104, 146, 182);
    	color: white;
    	padding: 10px;
    	position: absolute;
    	top: 36px;
    	left: 10px;
	}
	.fa-info-circle{
		position: absolute;
	    font-size: 13px;
	    top: 14px;
	    left: 10px;
	    font-weight: bold;
	    cursor: pointer;
	    opacity: 0.6;
	}
	.fa-info-circle:hover{
		opacity: 1;
	}
</style>
</head>
<body>
	<div id="frame">
		<div id="inner_frame">
			<table>
				<tr>
					<td>
						<i class="fa fa-info-circle" aria-hidden="true"></i>
						<span style="display: block;"><label for="notice">알립니다.</label>
						<span id="addinfo"><span id="plus">+</span>추가정보</span></span>
						<textarea id="notice" name="notice"></textarea>
					</td>
				</tr>
			</table>
			
			<div id="addbox">
				<ul>
					<li><input type="checkbox" onclick="initialize(this)"><span>텍스트박스</span></li>
					<li><input type="checkbox" onclick="initialize(this)"><span>체크박스</span></li>
				</ul>
			</div>	
			<button style="margin-bottom: 10px;" onclick="check()">등록</button>
		</div>
		<div id="use"><span>알립니다는 업체에서 예약을 받을 때 특별한 정보나 업체 주의사항 및 특이사항을 기록합니다. 추가정보를 통해 텍스트 박스나 체크 박스를 추가하여 예약 폼을 만듭니다. 소제목의 왼쪽의 체크 박스는 고객들로부터 해당 정보를 필수적으로 입력 받을 것인지에 대한 유무입니다. 추가정보의 오른쪽 상단에 ×를 클릭하면 해당 정보가 삭제되고 체크 박스의 경우 왼쪽 하단에 +를 클릭하면 체크 박스 항목이 하나 더 추가됩니다.</span></div>
	</div>
	<script type="text/javascript">
		var mouse_in_addbox = false;
		
		$(document).on('mouseenter', '#addbox', function(){
			mouse_in_addbox = true;
		}).on('mouseleave', '#addbox', function(){
			mouse_in_addbox = false;
		});
		
		$(document).mouseup(function(e){
			if(!mouse_in_addbox && !$(e.target).is('#addinfo')){
				$('#addbox').hide();
			}
			if(!mouse_in_addbox && !$(e.target).is('i.fa-info-circle')){
				$('#use').hide();
			}
			if(!mouse_in_addbox && $(e.target).is('#addinfo'))
				$('#use').hide();
			else if(!mouse_in_addbox && $(e.target).is('i.fa-info-circle'))
				$('#addbox').hide();
				
		});
		
		$('#addinfo').click(function(){
			var check = $('#addbox').css('display');
			if(check != 'none')
				$('#addbox').hide();
			else
				$('#addbox').show();
		});
		
		$('i.fa-info-circle').click(function(){
			var check = $('#use').css('display');
			if(check != 'none')
				$('#use').hide();
			else
				$('#use').show();
		});
		
		function initialize(el){
			var checkbox = $('#addbox').find('input[type="checkbox"]');
			setTimeout(function() {
				$('#addbox').hide();
				$(checkbox).each(function(){
					this.checked = false;
				});
				generation(el);
			}, 50); 
		}
		
		function generation(el){
			var text = $(el).next('span').text();
			if(text == '텍스트박스')
				$('table').append('<tr><td><div class="text" style="position: relative;">'+
				'<span class="x">×</span><input type="checkbox" class="ck">'+
				'<input type="text" class="title" placeholder="소제목을 입력하세요.">'+ 
				'<input type="text" placeholder="고객들로부터 입력을 받는 내용" disabled="disabled"></div></td></tr>');
			else if(text == '체크박스'){
			    var check = 0;
				$.MessageBox({
					  input    : true,
					  buttonDone : "확인",
					  message  : "체크박스 선택시 중복 허용을 하겠습니까?(네/아니오)"
					}).done(function(data){
					  if ($.trim(data)) {
						var text = $.trim(data);
						if(text == '네')
							check = 1;
						else if(text == '아니오')
							check = 2;
						else
							$.MessageBox({buttonDone : "확인",
					    		message : "체크박스가 생성되지 않았습니다."});
					  } else
						  $.MessageBox({buttonDone : "확인",
					    		message : "체크박스가 생성되지 않았습니다."});
					  if(check != 0){
						  if(check == 1)
						      $('table').append('<tr><td><div class="ck_box over" style="position: relative;">'+
							  '<span class="x">×</span><input type="checkbox" class="ck">'+
					    	  '<input type="text" class="title" placeholder="소제목을 입력하세요.">'+
					    	  '<input type="checkbox" class="ck_box_ex" disabled="disabled" checked="checked">'+
				    		  '<input type="text" class="ck_box_input" placeholder="고객들이 선택하는 내용">'+
				    		  '<input type="checkbox" class="ck_box_ex" disabled="disabled" checked="checked">'+
				    		  '<input type="text" class="ck_box_input" placeholder="고객들이 선택하는 내용">'+
				    		  '<span class="plus">+</span></div></td></tr>');
					  	  else if(check == 2)
					  		  $('table').append('<tr><td><div class="ck_box nover" style="position: relative;">'+
						  	  '<span class="x">×</span><input type="checkbox" class="ck">'+
					    	  '<input type="text" class="title" placeholder="소제목을 입력하세요.">'+
					    	  '<input type="checkbox" class="ck_box_ex" disabled="disabled" checked="checked">'+
				    		  '<input type="text" class="ck_box_input" placeholder="고객들이 선택하는 내용">'+
				    		  '<input type="checkbox" class="ck_box_ex" disabled="disabled">'+
				    		  '<input type="text" class="ck_box_input" placeholder="고객들이 선택하는 내용">'+
				    		  '<span class="plus">+</span></div></td></tr>');
					  }
				});
			}
		}
		
		$(document).on('click', '.x', function(){
			$(this).closest('tr').remove();
		});
		
		$(document).on('click', '.plus', function(){
			if($(this).closest('.ck_box').hasClass('over'))
				$(this).before('<input type="checkbox" class="ck_box_ex" disabled="disabled" checked="checked">'+
			    '<input type="text" class="ck_box_input" placeholder="고객들이 선택하는 내용">');
			else if($(this).closest('.ck_box').hasClass('nover'))
				$(this).before('<input type="checkbox" class="ck_box_ex" disabled="disabled">'+
			    '<input type="text" class="ck_box_input" placeholder="고객들이 선택하는 내용">');
		});
		
		function check(){
			var arr = $('table').find('.text, .ck_box');
			var empty = false;
			var all = '';
			
			if($('#notice').val() != ''){
				$(arr).each(function(){
					if($(this).hasClass('text')){
						if($(this).find('.title').val() == ''){
							$.MessageBox({buttonDone : "확인",
					    		message : "텍스트박스 소제목을 입력하세요."});
							empty = true;
							return false;
						}
					} else if($(this).hasClass('ck_box')){
						var ck_box_input = $(this).find('.ck_box_input');
						if($(this).find('.title').val() == ''){
							$.MessageBox({buttonDone : "확인",
					    		message : "체크박스 소제목을 입력하세요."});
							empty = true;
							return false;
						} else if(ck_box_input.length > 0){
							$(ck_box_input).each(function(){
								if($(this).val() == ''){
									empty = true;
									return false;
								}
							});
							if(empty){
								$.MessageBox({buttonDone : "확인",
						    		message : "체크박스 항목 내용을 입력하세요."});
							}
						}
					}
				});
				if(!empty){
					$(arr).each(function(){
						var ck;
						var title = $(this).find('.title').val();
						var kind = '';
						var over = '';
						var assembly = '';
						
						if($(this).find('.ck').is(':checked'))
							ck = 'ck';
						else if(!$(this).find('.ck').is(':checked'))
							ck = 'nck';					
						if($(this).hasClass('text'))
							kind = 'text';
						else if($(this).hasClass('ck_box'))
							kind = 'checkbox';
						if(kind == 'checkbox'){
							if($(this).hasClass('over'))
								over = 'over';
							else if($(this).hasClass('nover'))
								over = 'nover';
						}
						if(kind == 'text'){
							assembly += ck;
							assembly += '/' + title;
							assembly += '/' + kind + '*';
						} else if(kind == 'checkbox'){
							assembly += ck;
							assembly += '/' + title;
							assembly += '/' + kind;
							assembly += '(' + over + '*';
							var ck_box_input = $(this).find('.ck_box_input');
							$(ck_box_input).each(function(){
								var lasttext = assembly.charAt(assembly.length - 1);
								if(lasttext == '*')
									assembly += $(this).val();
								else
									assembly += ',' + $(this).val();
							});
						}
						if(all == '')
							all = assembly;
						else
							all += '&' + assembly;
					});
					all = $.trim(all);
					$('input[name="notice"]', opener.document).val($('#notice').val().replace(/\n/g, "<br>"));
					$('input[name="addInfo"]', opener.document).val(all);
					$('#add', opener.document).prop('checked', true);
					window.close();
				}
			} else
				$.MessageBox({buttonDone : "확인",
		    		message : "'알립니다.'에 필요한 정보를 입력해주세요."});
		}
	</script>
</body>
</html>