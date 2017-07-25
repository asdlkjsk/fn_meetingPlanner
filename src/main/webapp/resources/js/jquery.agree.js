/**	agree페이지 스크립트
 * 
 */
$(function() {
 		$("input[name=grade]").click(function(){
	        if($("#peterriver1").prop("checked")){       
	            $("input[id=peterriver1]").prop("checked",true);	         
	            $("input[id=peterriver2]").prop("checked",false);
	        }else if($("#peterriver2").prop("checked")) {
	        	$("input[id=peterriver1]").prop("checked",false);	         
	            $("input[id=peterriver2]").prop("checked",true);
	        }
		});		
				
		$("#peterriver3").click(function() {
			if($("#peterriver3").prop("checked")==true) {
				$("input[name=chk]").prop("checked", true);
			}else {
				$("input[name=chk]").prop("checked", false);
			}
		});
		
		$("input[name=chk]").click(function() {
			if($("#peterriver4").prop("checked")==true && $("#peterriver5").prop("checked")==true) {
				$("#peterriver3").prop("checked", true);
			}else {
				$("#peterriver3").prop("checked", false);
			}
		});
		
		
		$("#btn").click(function() {
			var path = '';
			if($("#peterriver3").prop("checked")==true && $("#peterriver4").prop("checked")==true && $("#peterriver5").prop("checked")==true){
				path = $(".lg").val()+"Join";
				$("#frm_agree").submit();
			}else {
				alert("동의항목을 체크해주세요");
			}
		});
		
		
		$("#cancel").click(function() {
			location.href = "memberLogin";
		});
		
	});