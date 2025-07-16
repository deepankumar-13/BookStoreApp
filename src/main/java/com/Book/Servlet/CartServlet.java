package com.Book.Servlet;

import java.io.IOException;
import com.Book.Controller.Cart;
import com.Book.Imp.BookDAOImp;
import com.Book.Interface.BookDAO;
import com.Book.Model.Books;
import com.Book.Model.CartItems;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/CartServlet")
@SuppressWarnings("serial")
public class CartServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Cart cart = (Cart)session.getAttribute("cart");
		if(cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		String action = req.getParameter("action");
		String name = req.getParameter("name");
		int novel_id = Integer.parseInt(req.getParameter("book_id"));
		session.setAttribute("novel_id",novel_id);
		
		BookDAO book = new BookDAOImp();
		
		
		if(action.equals("add")) {
			Books books = book.fetchBookById(novel_id);
			if(books != null) {
				int quantity=1;
				CartItems cartItems = new CartItems(
						books.getBook_id(),
						books.getBookName(),
						books.getAuthor(),
						books.getDescription(),
						quantity,
						books.getBookType(),
						books.getPrice());
				cart.addBook(cartItems);
				session.setAttribute("cartItems",cartItems);
			}
		}
		
		else if(action.equals("update")){
			int quantity = Integer.parseInt(req.getParameter("quantity"));
			cart.updateBook(novel_id, quantity);
			session.setAttribute("quantity",quantity);
		}
		
		else if(action.equals("remove")) {
			cart.remove(novel_id);
		}
		
		else if(action.equals("clear")) {
			cart.clear();
		}
		else {
			System.out.println("There is No Cart");
		}
    	session.setAttribute("cart", cart);
        req.getRequestDispatcher("/addtocart.jsp").forward(req, resp);
	}
}
