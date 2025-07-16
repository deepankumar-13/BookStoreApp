package com.Book.Servlet;

import java.io.IOException;

import com.Book.Imp.BookDAOImp;
import com.Book.Interface.BookDAO;
import com.Book.Model.Books;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/OperationServlet")
public class OperationServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		
		String action = req.getParameter("action");
		
		BookDAO books = new BookDAOImp();
		
		if(action.equals("delete")) {
			int id = Integer.parseInt(req.getParameter("book_id"));
			int res = books.removeBook(id);
			req.getRequestDispatcher("AdminBooks").forward(req, resp);;
			
		}else if(action.equals("addbook")){
			Books book = null;
			String book_name = req.getParameter("book_name");
			String author = req.getParameter("author");
			String description = req.getParameter("description");
			String book_type = req.getParameter("book_type");
			int price = Integer.parseInt(req.getParameter("price"));
			
			book = new Books();
			book.setBookName(book_name);
			book.setAuthor(author);
			book.setDescription(description);
			book.setBookType(book_type);
			book.setPrice(price);
			
			books.addBook(book);
			session.setAttribute("newbook", book);
			req.getRequestDispatcher("AdminBooks").forward(req, resp);;
		}else {
			
		}
		
	}

}
