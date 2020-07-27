package kr.farmstory2.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {
	
	// Î∞∞Ìè¨?ö©
	//private static final String HOST = "jdbc:mysql://kimdongwook.pe.kr:3306/fkrhtmq123?";
	//private static final String USER = "fkrhtmq123";
	//private static final String PASS = "1234";
	
	// Í∞úÎ∞ú?ö©
	private static final String HOST = "jdbc:mysql://192.168.50.82:3306/kdw";
	private static final String USER = "kdw";
	private static final String PASS = "1234";
	
	public static Connection getConnetion() throws Exception {
		// 1?ã®Í≥?
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2?ã®Í≥?
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		return conn;
		
	}
}
