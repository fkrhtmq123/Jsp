// 정규표현식
var regEmail    = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

//최종 점검을 위한 상태변수 선언
var isEmailOk = false;

$(document).ready(function(){
	var alreadyCheck = false;
	
	$('input[name=email]').blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var email = tag.val();
		var json = {"email":email};
		
		if(regEmail.test(email) == false) {
			alert('@를 포함한 이메일을 적어주세요.');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		// 모든 검증이 통과되고 통신 시작
		$.ajax({
			url:'/Jboard1/user/proc/checkEmail.jsp',
			type:'get',
			data:json,
			dataType:'json',
			success:function(data){
				if(data.result == 1) {
					$('.resultEmail').css('color', 'red').text('이미 사용 중인 이메일입니다.');
					isEmailOk = false;
				}
			}
		});
	});
});