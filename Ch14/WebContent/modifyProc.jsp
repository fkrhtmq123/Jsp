<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//파라미터 수신
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String pos = request.getParameter("pos");
	String dep = request.getParameter("dep");
	String rdate = request.getParameter("rdate");
	
	//DB정보
	String host = "jdbc:mysql://192.168.44.46:3306/kdw";
	String user = "kdw";
	String pass = "1234";
	
	//1단계
	Class.forName("com.mysql.jdbc.Driver");
	
	//2단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	//3단계
	String sql = "UPDATE `MEMBER` SET `name`=?, `hp`=?, `pos`=?, `dep`=? ";
		   sql += "WHERE `uid`=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, hp);
	pstmt.setString(3, pos);
	pstmt.setString(4, dep);
	pstmt.setString(5, uid);
	
	//4단계
	pstmt.executeUpdate();
	
	//5단계
	
	//6단계
	pstmt.close();
	conn.close();
	
	//리다이렉트
	response.sendRedirect("./list.jsp");
%>