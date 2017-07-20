<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="<%=application.getContextPath()%>/resources/js/jquery.agree.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/1reset.css">
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/css/basic.css">
<link href="<%=application.getContextPath()%>/resources/css/icheck-bootstrap.css" rel="stylesheet">
<style type="text/css">
.main_section {
	width: 1150px;
	height: 810px;
	/* background-color: yellow; */
	margin: 0 auto;
}

#agree_rap {
	width: 550px;
	height: 720px;
	/* background: #00806f; */
	margin: auto;
	border: 4px solid #44aaff;
	border-radius: 25px;
	margin-top: 25px;
}

.radio {
	display: inline-block;
}

.agree_box {
	width: 100%;
	height : 160px;
	margin: auto;
	padding-top: 20px;
	overflow: auto;	
	border: 1px solid #d5d5d5;
}
#ag_1 {
	width: 80%;
	height: 80px;
	margin : auto;	
	border-bottom: 2px solid #44aaff;
}

#ag_2 {
	width: 80%;
	height : 542px !important;
	height: 640px;
	margin: auto;
}

#btn_box {
	width: 550px;
	height: 60px;
	margin: auto;
	margin-top: 20px;
}

#cancel {
	width: 260px;
	height: 60px;
	margin:auto;
	background: #20df42;
	text-align: center;
	color: white;
	font-size: 30px;
	display: inline-block;
	margin-left: 10px;
	margin-right: 10px;
	padding-top: 14px;
	border-radius: 5px;
}

#btn {
	width: 260px;
	height: 60px;
	margin:auto;
	background: #44aaff;
	text-align: center;
	color: white;
	font-size: 30px;
	display: inline-block;
	padding-top: 14px;
	border-radius: 5px;
	
}

#cancel:hover {
	background: #19b336;
}

#btn:hover {
	background: #0070cc;
}

#ag_2 > h2 {
	margin-top : 40px;
	margin-bottom: 20px;
}

.sp {
	width: 200px;
	/* color: #44aaff; */
	font-size: 20px;
	font-weight: bold;
	margin-right: 142px;
}
label {
	font-size: 15px;
	/* color: #44aaff; */
}

.checkbox {
	width: 40px;
    display: inline-block;
    float: right;
    margin-bottom: 20px;
}


</style>
</head>
<body>
	<c:import url="/WEB-INF/views/temp/header.jsp" /> 
	<section class="main_section">
	<form id="frm_agree" method="post" name="grade" action="memberJoin">
		<div id="agree_rap">
			<div id="ag_1">
			<span class="sp">회원구분</span>
				<div class="radio icheck-peterriver" style="margin-right: 40px;">
					<input type="radio" id="peterriver1" name="grade" class="lg" value="client" checked="checked"/>
					<label for="peterriver1">일반회원</label>
				</div>
				<div class="radio icheck-peterriver" style="padding-top: 20px;">
					<input type="radio" id="peterriver2" name="grade" class="lg" value="manager" />
					<label for="peterriver2">매니저</label>
				</div>
			</div>
			
			<div class="checkbox icheck-peterriver" style="width: 550px; height: 30px; margin-top: 20px;">
						<input type="checkbox" id="peterriver3">
						<label for="peterriver3" style="margin-left: 400px;">전체동의</label>
			</div>
			
			<div id="ag_2">
				<span class="sp">이용약관</span>
				<div class="checkbox icheck-peterriver">
						<input type="checkbox" id="peterriver4" name="chk" />
						<label for="peterriver4" style="float: right"></label>
					</div>
				<div class="agree_box" style="margin-bottom: 40px;">					
					<c:forEach items="${fn:split('헤이즈 - 비도 오고 그래서(feat.신용재)　비도 오고 그래서　네 생각이 났어　생각이 나서 그래서　그랬던거지 별 의미 없지　오늘은 오랜만에　네 생각을 하는 날이야　일부러 난 너와 내가　담겨 있는 노랠 찾아 오늘은 슬프거나 우울해도 괜찮은 맘이야 어차피 이 밤이다 지나가면은 별 수도 없이난 또 한 동안은 널 잊고 살테니까내 가슴 속에만품고 살아갈테니까비도 오고 그래서네 생각이 났어생각이 나서 그래서　그랬던거지　별 의미 없지　우산 속에 숨어서　네 집을 지나쳐　그 날의 감정을　다시 느껴보고파서　떨어지는 빗물과　시계 초침 소리가　방 안 가득 채우면　그 때로 난 돌아가　차라리 난 이 비가　그치지 않았음 해　매일 기억 속에 살 수 있게　나 널 아프게 했던　못난 놈이니까　널 다시 품에 안을　자격도 없으니까　비도 오고 그래서　네 생각이 났어　생각이 나서 그래서　그랬던거지　별 의미 없지　우산 속에 숨어서　네 집을 지나쳐　그 날의 감정을　다시 느껴보고파서　우리에게 주어진 행복을　너무 빨리 쓴 것 같아　거기까지 인 것 같아　이 비가 그칠 땐 각자 있던 곳에서　다시 살아가야만 해　비도 오고 그래서　네 생각이 났어　생각이 나서 그래서　그랬던거지　별 의미 없지　우산 속에 숨어서　네 집을 지나쳐　그 날의 감정을　다시 느껴보고파서','　') }" var="item">
						<p>${item}</p>
					</c:forEach>
				</div>
				<span class="sp">개인정보동의</span>
					<div class="checkbox icheck-peterriver">
						<input type="checkbox" id="peterriver5" name="chk" />
						<label for="peterriver5" style="float: right;"></label>
					</div>
				<div class="agree_box">
					<c:forEach items="${fn:split('헤이즈 - 비도 오고 그래서(feat.신용재)　비도 오고 그래서　네 생각이 났어　생각이 나서 그래서　그랬던거지 별 의미 없지　오늘은 오랜만에　네 생각을 하는 날이야　일부러 난 너와 내가　담겨 있는 노랠 찾아 오늘은 슬프거나 우울해도 괜찮은 맘이야 어차피 이 밤이다 지나가면은 별 수도 없이난 또 한 동안은 널 잊고 살테니까내 가슴 속에만품고 살아갈테니까비도 오고 그래서네 생각이 났어생각이 나서 그래서　그랬던거지　별 의미 없지　우산 속에 숨어서　네 집을 지나쳐　그 날의 감정을　다시 느껴보고파서　떨어지는 빗물과　시계 초침 소리가　방 안 가득 채우면　그 때로 난 돌아가　차라리 난 이 비가　그치지 않았음 해　매일 기억 속에 살 수 있게　나 널 아프게 했던　못난 놈이니까　널 다시 품에 안을　자격도 없으니까　비도 오고 그래서　네 생각이 났어　생각이 나서 그래서　그랬던거지　별 의미 없지　우산 속에 숨어서　네 집을 지나쳐　그 날의 감정을　다시 느껴보고파서　우리에게 주어진 행복을　너무 빨리 쓴 것 같아　거기까지 인 것 같아　이 비가 그칠 땐 각자 있던 곳에서　다시 살아가야만 해　비도 오고 그래서　네 생각이 났어　생각이 나서 그래서　그랬던거지　별 의미 없지　우산 속에 숨어서　네 집을 지나쳐　그 날의 감정을　다시 느껴보고파서','　') }" var="item">
						<p>${item}</p>
					</c:forEach>
				</div>
			</div>
		</div>
		<div id="btn_box">
			<div id="cancel" role="button">
				<p>취 소</p>
			</div>
			<div id="btn" role="button">
				<p>동 의<p>
			</div>
		</div>
	</form>
	</section>
<c:import url="/WEB-INF/views/temp/footer.jsp" />
<<<<<<< HEAD

=======
<script type="text/javascript">
$(function() {	
	$('#client').click(function() {
		if($(this).prop('checked'), true){
			$('#manager').prop('checked', false);
			$(this).id();
		}else {
			$('#manager').prop('checked', true);			
		}
	});
	
 	/* if('${param.grade}' == 'c') {
		$("#frm_agree").attr("action", "memberJoin");
	}else if('${param.grade}' == 'm') {
		$("#frm_agree").attr("action", "memberJoin");
	} */
	
});	
</script>
>>>>>>> 4d820bed2254ace7143544f1471b0ad0c8e1405f
</body>
</html>