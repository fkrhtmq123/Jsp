<%@page import="kr.co.farmstory1.config.SQL"%>
<%@page import="kr.co.farmstory1.config.DBConfig"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdk.nashorn.internal.ir.ForNode"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid   = request.getParameter("uid");
	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String name  = request.getParameter("name");
	String nick  = request.getParameter("nick");
	String email = request.getParameter("email");
	String hp    = request.getParameter("hp");
	String zip   = request.getParameter("zip");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String regip = request.getRemoteAddr();
	
	Connection conn = DBConfig.getConnetion();
	
	// 3단계
	Statement stmt = conn.createStatement();
	
	// 4단계
	/*
	String sql = "INSERT INTO `JBOARD_MEMBER` SET ";
		   sql += "`uid`='"+uid+"', ";
		   sql += "`pass`=PASSWORD('"+pass1+"'), ";
		   sql += "`name`='"+name+"', ";
		   sql += "`nick`='"+nick+"', ";
		   sql += "`email`='"+email+"', ";
		   sql += "`hp`='"+hp+"', ";
		   sql += "`zip`='"+zip+"', ";
		   sql += "`addr1`='"+addr1+"', ";
		   sql += "`addr2`='"+addr2+"', ";
		   sql += "`regip`='"+regip+"', ";
		   sql += "`rdate`=NOW()";
	*/
	PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_REGISTER);
	psmt.setString(1, uid);
	psmt.setString(2, pass1);
	psmt.setString(3, name);
	psmt.setString(4, nick);
	psmt.setString(5, email);
	psmt.setString(6, hp);
	psmt.setString(7, zip);
	psmt.setString(8, addr1);
	psmt.setString(9, addr2);
	psmt.setString(10, regip);
	
	
	psmt.executeUpdate();
	//stmt.executeUpdate(sql);
	// 5단계
	// 6단계
	psmt.close();
	//stmt.close();
	conn.close();
	
	// 리다이렉트
	response.sendRedirect("/Farmstory1/user/login.jsp");
%>