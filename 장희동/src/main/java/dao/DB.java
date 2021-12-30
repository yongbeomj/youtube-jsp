package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB {

	PreparedStatement preparedStatement;
	Connection connection;
	ResultSet resultSet;
	
	public DB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3307/youtube?serverTimezone=UTC", "root", "1234");
		} catch (Exception e) {
			System.out.println("[DB 연동 실패]");
		}
	}
}
