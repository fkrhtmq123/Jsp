<%@page import="com.google.gson.JsonObject"%>
<%@page import="kr.co.farmstory1.config.SQL"%>
<%@page import="kr.co.farmstory1.config.DBConfig"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String pass = request.getParameter("pass");
	
	Connection conn = DBConfig.getConnetion();
	
	PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_CHECK_PASS);
	psmt.setString(1, pass);
	
	ResultSet rs =  psmt.executeQuery();
	
	int result = 0;
	if(rs.next()) {
		result = rs.getInt(1);
	}
	
	rs.close();
	psmt.close();
	conn.close();
	
	// JSON 생성
	JsonObject json = new JsonObject();
	json.addProperty("result", result);
	
	// JSON 출력
	out.print(json);
%>