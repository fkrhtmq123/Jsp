package kr.jboard2.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	// DB정보 - 배포용
	// public static final String HOST = "jdbc:mysql://kimdongwook.pe.kr:3306/kdw";
	// public static final String USER= "kdw";
	// public static final String PASS = "";
	
	// DB정보 - 개발용
	public static final String HOST = "jdbc:mysql://192.168.50.82:3306/kdw";
	public static final String USER = "kdw";
	public static final String PASS = "1234";
	
	public static Connection getConnection() throws Exception {
		// 1단계
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2단계
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		return conn;
	}

}
