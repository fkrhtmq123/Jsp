// 정규표현식
var regNick    = /^[a-z가-힣0-9]{2,5}$/;    // 별명 검사식

// 폼 검증에 사용할 상태 변수
var isNickOk = false;

//별명 중복 체크
$(document).ready(function(){
	var inputNick = $('input[name=nick]');
	var alreadyCheck = false;
	
	inputNick.blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var nick = tag.val();
		var json = {"nick":nick};
		
		if(regNick.test(nick) == false) {
			alert('별명는 영어 소문자, 한글, 숫자(조합)으로 최소 2자 이상이어야 합니다.');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		$.ajax({
			url:'/Jboard2/user/checkNick.do?nick=' + nick,
			type:'get',
			dataType:'json',
			success:function(data){
				if(data.result == 1) {
					$('.resultNick').css('color', 'red').text('이미 사용 중인 별명 입니다.');
					isNickOk = false;
				} else {
					$('.resultNick').css('color', 'green').text('사용 하실 수 있는 별명입니다.');
					isNickOk = true;
				}
			}
		});
	});
});