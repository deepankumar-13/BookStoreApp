package com.Book.Imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Book.DBConnection.DBConnection;
import com.Book.Interface.AdminDAO;
import com.Book.Model.Admin;

public class AdminDAOImp implements AdminDAO {
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet resultset;
	Admin admin = null;
	private static final String FETCHADMIN = "SELECT * FROM ADMIN WHERE USERNAME = ?"; 

	{
		con = DBConnection.connect();
	}

	@Override
	public Admin fetchAdmin(String u_name) {
		try {
			
			pstmt = con.prepareStatement(FETCHADMIN);
			pstmt.setString(1,u_name);
			resultset = pstmt.executeQuery();
			if(resultset.next()) {
				String name = resultset.getString("admin_name");
				String username = resultset.getString("username");
				String password = resultset.getString("password");
				String email = resultset.getString("email");
				admin = new Admin(name,username,password,email);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return admin;
	}

}
