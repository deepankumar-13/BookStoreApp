package com.Book.DBConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	private static String url = "jdbc:mysql://localhost:3306/bookstore1";
	private static String username = "root";
	private static String password = "root";
	private static Connection con;
	
	public static Connection connect() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		}catch(ClassNotFoundException | SQLException e){
			
			e.printStackTrace();
		}
		return con;
	}
}
