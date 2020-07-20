// 정규표현식
var regPw    = /^[a-z0-9_-]{6,18}$/;         // 비밀번호 검사식

var isPassOk = false;

$(function(){
	var inputPass = $('input[name=pass1]')
	var alreadyCheck = false;
	
	inputPass.blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var pass = tag.val();
		var json = {"pass":pass};
		
		if(regPw.test(pass) == false) {
			alert('비밀번호는 영어 소문자, 숫자 조합으로 최소6자 이상이어야 합니다.');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		// 모든 검증이 통과되고 통신 시작
		$.ajax({
			url:'/Jboard2/user/checkPass.do?pass=' + pass,
			type:'get',
			dataType:'json',
			success:function(data){
				if(data.result != 1) {
					$('.resultPass1').css('color', 'green').text('사용 하실 수 있는 비밀번호 입니다.');
					isPassOk = true;
				} 
			}
		});
	});
	
	// 비밀번호 일치여부 확인
	$('input[name=pass2]').focusout(function(){
		var pass1 = $('input[name=pass1]').val();
		var pass2 = $('input[name=pass2]').val();
		
		if(pass1 != pass2){
			$('.resultPass2').css('color', 'red').text('비밀번호가 일치하지 않습니다.');
			isPassOk = false;
		}else{
			$('.resultPass2').css('color', 'green').text('비밀번호가 일치 합니다.');
			isPassOk = true;
		}
	});
});