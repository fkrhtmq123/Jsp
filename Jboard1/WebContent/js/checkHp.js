// 정규표현식
var regHp    = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

//최종 점검을 위한 상태변수 선언
var isHpOk = false;

$(document).ready(function(){
	var alreadyCheck = false;
	
	$('input[name=hp]').blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var hp = tag.val();
		var json = {"hp":hp};
		
		if(regHp.test(hp) == false) {
			alert('전화번호는 '-'포함 13자리를 입력해주세요.');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		// 모든 검증이 통과되고 통신 시작
		$.ajax({
			url:'/Jboard1/user/proc/checkHp.jsp',
			type:'get',
			data:json,
			dataType:'json',
			success:function(data){
				if(data.result == 1) {
					$('.resultHp').css('color', 'red').text('이미 사용 중인 전화번호 입니다.');
					isHpOk = false;
				}
			}
		});
	});
});