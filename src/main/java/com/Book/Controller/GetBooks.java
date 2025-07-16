package com.Book.Controller;

import java.io.IOException;
import java.util.List;
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
@WebServlet("/BookStore")
public class GetBooks extends HttpServlet{
	
	private List<Books> bookList;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession(false);
		
		if (session != null && session.getAttribute("email") != null) {
			
			BookDAO bookObj = new BookDAOImp();
			bookList = bookObj.fetchBooks();
			session.setAttribute("bookList", bookList);
			
			resp.sendRedirect("Home.jsp");
		}else {
			resp.sendRedirect("login.jsp");
		}
	}
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        doGet(req, resp);
    }
}
