package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {

	PreparedStatement pstmt;
	Connection conn;
	ResultSet rs; 
	
	public DB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube?serverTimezone=UTC", "root", "1234");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
