<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="/Farmstory2/css/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <!--  
    <script>
    	// 유효성(validation) 검증
    	$(function(){
    		$('.register > form').submit(function(){
        		
        		// 아이디 중복 여부 확인
        		if(!isUidOk) {
        			alert('아이디를 다시 확인 하십시오.')
        			return false;
        		}
        		// 비밀번호 일치 여부 확인
        		if(!isPassOk) {
        			alert('비밀번호를 다시 확인 하십시오.')
        			return false;
        		}
        		// 이름 한글 여부 확인
        		if(false) {
        			alert('이름을 다시 확인 하십시오.')
        			return false;
        		}
        		// 별명 중복 여부 확인
        		if(!isNickOk) {
        			alert('별명을 다시 확인 하십시오.')
        			return false;
        		}
        		// 이메일 중복 여부 확인
        		if(!isEmailOk) {
        			alert('이메일를 다시 확인 하십시오.')
        			return false;
        		}
        		// 휴대폰 중복 여부 확인
        		if(false) {
        			alert('휴대폰을 다시 확인 하십시오.')
        			return false;
        		}
        		
        		// 최종 데이터 확인 완료
        		return true;
        	});
    	});
    	$(function(){
    		var checkbox = $('input[type=checkbox]');
    		var nextBtn = $('.terms > div > a:eq(1)');
    		
    		nextBtn.click(function(){
    			var chkTerms = checkbox.eq(0).is(':checked');
    			var chkPrivacy = checkbox.eq(1).is(':checked');
    			
    			if(chkTerms && chkPrivacy) {
    				return true;
    			} else {
    				alert('동의 하셔야 합니다.');
    				return false;
    			}
    		});
    	});
    </script>
	-->
</head>
<body>
    <div id="wrapper">
    	<div class="rightbanner">
            <img src="/Farmstory2/img/float_banner_tit.png" alt="">
            <img src="/Farmstory2/img/float_banner_txt.png" alt="">
        </div>
        <header>
            <a href="#" class="logo"><img src="/Farmstory2/img/logo.png" alt="로고"/></a>
            <p>
                <a href="#">HOME |</a>
                <c:choose>
                	<c:when test="${ empty member }">
		                <a href="/Farmstory2/user/terms.do">회원가입 |</a>
		                <a href="/Farmstory2/user/login.do">로그인 |</a>
		            </c:when>
		            <c:otherwise>
                		<a href="/Farmstory2/user/logout.do">로그아웃 |</a>
                	</c:otherwise>
                </c:choose>
                <a href="#">고객센터</a>
            </p>
            <img src="/Farmstory2/img/head_txt_img.png" alt="3만원이상 무료배송, 팜카드 10%적립">
            
            <ul class="gnb">
                <li><a href="#">팜스토리소개</a></li>
                <li><a href="#"><img src="/Farmstory2/img/head_menu_badge.png" alt="30%"/>장보기</a></li>
                <li><a href="#">농작물이야기</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">커뮤니티</a></li>
            </ul>

        </header>