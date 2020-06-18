$(function(){
	var form = $('.register > form');
	 
	// form의 전송 버튼(submit)를 클릭하면
	form.submit(function(){
		if(isUidOk == false) {
 		alert('아이디를 확인하세요.');
 		return false;
		}
 	
		if(!isPassOk) {
			alert('비밀번호를 확인하세요.');
			return false;
		}
 	
		if(!isNameOk) {
			alert('이름을 확인하세요.');
			return false;
		}
 	
		if(!isNickOk) {
			alert('별명을 확인하세요.');
			return false;
		}
		/*
 		if(이메일 검증이 안됐을때) {
 			alert('이메일을 확인하세요.');
 			return false;
 		}
 		
 		if(휴대폰 검증이 안됐을때) {
 			alert('휴대폰을 확인하세요.');
 			return false;
 		}
		 */
		return true;
	});
});