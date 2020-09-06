package kr.co.jboard1.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	// DB���� - ������
	// public static final String HOST = "jdbc:mysql://kimdongwook.pe.kr:3306/kdw";
	// public static final String USER= "kdw";
	// public static final String PASS = "";
	
	// DB���� - ���߿�
	public static final String HOST = "jdbc:mysql://192.168.50.82:3306/kdw";
	public static final String USER = "kdw";
	public static final String PASS = "1234";
	
	public static Connection getConnection() throws Exception {
		// 1�ܰ�
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2�ܰ�
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		return conn;
	}

}
