<%@page import="kr.co.farmstory1.bean.MemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 로그인 확인여부
	MemberBean mb = (MemberBean) session.getAttribute("member");

	String code  = request.getParameter("code");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리</title>
    <link rel="stylesheet" href="/Farmstory1/css/style.css"/>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
	<script>
		var code = <%= code %>;
		if(code == '101') {
			alert('로그인을 먼저 하셔야 합니다.');
			location.href = '/Farmstory1/user/login.jsp';
		}
		
		$(document).ready(function(){
			$('#summernote').summernote({
				height: 150
			});
		});
	</script>
</head>
<body>
    <div id="wrapper">
        <div class="rightbanner">
            <img src="/Farmstory1/img/float_banner_tit.png" alt="">
            <img src="/Farmstory1/img/float_banner_txt.png" alt="">
        </div>
        <header>
            <a href="/Farmstory1" class="logo">
                <img src="/Farmstory1/img/logo.png" alt="로고">
            </a>
            <p>
                <a href="/Farmstory1">HOME |</a>
                <% if(mb == null) { %>
                <a href="/Farmstory1/user/terms.jsp">회원가입 |</a>
                <a href="/Farmstory1/user/login.jsp">로그인 |</a>
                <% } else { %>
                <a href="/Farmstory1/user/proc/logout.jsp">로그아웃 |</a>
                <% } %>
                <a href="#">고객센터</a>
            </p>
            <img src="/Farmstory1/img/head_txt_img.png" alt="3만원 이상 무료배송, 팜카드 10% 적립">
            <ul class="gnb">
                <li><a href="/Farmstory1/introduction/greeting.jsp">팜스토리소개</a></li>
                <li><a href="/Farmstory1/board/list.jsp?group=market&cate=market"><img src="/Farmstory1/img/head_menu_badge.png" alt="30%"> 장보기</a></li>
                <li><a href="/Farmstory1/board/list.jsp?group=croptalk&cate=croptalk">농작물이야기</a></li>
                <li><a href="/Farmstory1/board/list.jsp?group=event&cate=event">이벤트</a></li>
                <li><a href="/Farmstory1/board/list.jsp?group=community&cate=notice">커뮤니티</a></li>
            </ul>
        </header>