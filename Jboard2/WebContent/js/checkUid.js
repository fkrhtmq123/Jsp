// 정규표현식
var regId    = /^[a-z]+[a-z0-9]{3,19}$/;    // 아이디 검사식

// 폼 검증에 사용할 상태 변수
var isUidOk = false;

// 아이디 중복 체크
$(document).ready(function(){
	var inputUid = $('input[name=uid]');
	var alreadyCheck = false;
	
	inputUid.blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var uid = tag.val();
		var json = {"uid" : uid};
		
		if(regId.test(uid) == false) {
			alert('아이디는 영어 소문자, 숫자 조합으로 최소 4자 이상이어야 합니다.');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		$.ajax({
			url : '/Jboard2/user/checkUid.do?uid=' + uid,
			type : 'get',
			dataType : 'json',
			success : function(data){
				if(data.result == 1) {
					$('.resultId').css('color', 'red').text('이미 사용 중인 아이디 입니다.');
					isUidOk = false;
				} else {
					$('.resultId').css('color', 'green').text('사용할 수 있는 아이디 입니다.');
					isUidOk = true;
				}
			}
		});
	});
});