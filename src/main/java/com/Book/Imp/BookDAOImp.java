package com.Book.Imp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Book.DBConnection.DBConnection;
import com.Book.Interface.BookDAO;
import com.Book.Model.Books;

public class BookDAOImp implements BookDAO {
	
	private static final String FETCHBOOKS = "SELECT * FROM BOOKS";
	private static final String FETCHBOOKBYID = "SELECT * FROM BOOKS WHERE BOOK_ID = ?";
	private static final String REMOVEBOOKBYID = "DELETE FROM BOOKS WHERE BOOK_ID = ?";
	private static final String INSERTBOOK = "INSERT INTO BOOKS(BOOK_NAME,AUTHOR,DESCRIPTION,BOOK_TYPE,PRICE) VALUES (?,?,?,?,?)";
	
	private static Connection con;
	private static Statement stmt;
	private static PreparedStatement pstmt;
	private static ResultSet resultset;
	
	static {
		con = DBConnection.connect();
	}
	

	@Override
	public List<Books> fetchBooks() {
		List<Books> books = new ArrayList<>(); 
		
		try {
			stmt = con.createStatement();
			resultset = stmt.executeQuery(FETCHBOOKS);
			while(resultset.next()) {
				books.add(new Books(resultset.getInt("book_id")
						,resultset.getString("book_name")
						,resultset.getString("author")
						,resultset.getString("description")
						,resultset.getString("book_type")
						,resultset.getInt("price"))
						);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return books;
	}


	@Override
	public Books fetchBookById(int id) {
		Books book = null;
		try {
			pstmt=con.prepareStatement(FETCHBOOKBYID);
			pstmt.setInt(1,id);
			resultset = pstmt.executeQuery();
			if(resultset.next()) {
				book = new Books(
				resultset.getInt("book_id"),
				resultset.getString("book_name"),
				resultset.getString("author"),
				resultset.getString("description"),
				resultset.getString("book_type"),
				resultset.getInt("price"));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return book;
	}


	@Override
	public int addBook(Books book) {
		try {
			pstmt = con.prepareStatement(INSERTBOOK);
			pstmt.setString(1,book.getBookName());
			pstmt.setString(2,book.getAuthor());
			pstmt.setString(3,book.getDescription());
			pstmt.setString(4,book.getBookType());
			pstmt.setInt(5,book.getPrice());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return 0;
	}


	@Override
	public int removeBook(int id) {
		try {
			pstmt = con.prepareStatement(REMOVEBOOKBYID);
			pstmt.setInt(1, id);
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
