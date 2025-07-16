package com.Book.Imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Book.DBConnection.DBConnection;
import com.Book.Interface.UserDAO;
import com.Book.Model.User;

public class UserDAOImp implements UserDAO {
	
	private static final String INSERTUSER = "INSERT INTO USER(EMAIL,MOBILE,USERNAME,PASSWORD,ADDRESS,NAME) VALUES(?,?,?,?,?,?)";
	private static final String FETCHPASSWORD = "SELECT NAME , PASSWORD , ADDRESS FROM USER WHERE EMAIL = ?";
	private static Connection con;
	private static PreparedStatement pstmt;
	private ResultSet resultset;
	
	static {
		con = DBConnection.connect();
	}

	
	
	@Override
	public int insertUser(User user) {
		try {
			pstmt = con.prepareStatement(INSERTUSER);
			pstmt.setString(1,user.getEmail());
			pstmt.setLong(2,user.getMobile());
			pstmt.setString(3,user.getUsername());
			pstmt.setString(4,user.getPassword());
			pstmt.setString(5,user.getAddress());
			pstmt.setString(6,user.getName());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public User fetchPassword(String email) {
		User user = null;
		try {
			pstmt = con.prepareStatement(FETCHPASSWORD);
			pstmt.setString(1, email);
			resultset = pstmt.executeQuery();
			if(resultset.next()) {
				String name = resultset.getString("name");
				String password = resultset.getString("password");
				String address = resultset.getString("address");
				
				user = new User();
				user.setName(name);
				user.setPassword(password);
				user.setAddress(address);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

}
