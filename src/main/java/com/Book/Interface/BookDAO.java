package com.Book.Interface;

import java.util.List;

import com.Book.Model.Books;


public interface BookDAO {
	
	List<Books> fetchBooks();
	Books fetchBookById(int id);
	int addBook(Books book);
	int removeBook(int id);
}
