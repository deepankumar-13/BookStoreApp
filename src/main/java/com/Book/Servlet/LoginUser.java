package com.Book.Servlet;

import java.io.IOException;

import com.Book.Imp.UserDAOImp;
import com.Book.Interface.UserDAO;
import com.Book.Model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginUser extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();	
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		UserDAO existingUser = new UserDAOImp();
		User user = existingUser.fetchPassword(email) ;
		String checkPassoword = user.getPassword();
		String name = user.getName();
		String address = user.getAddress();
		
		if(password != null && password.equals(checkPassoword)){
			@SuppressWarnings("unused")
			Cookie cookie = new Cookie("name",name);
			session.setAttribute("email", email);
			session.setAttribute("password", password);
			session.setAttribute("name", name);
			session.setMaxInactiveInterval(10*60);
			session.setAttribute("loggedInUser", email);
			session.setAttribute("address", address);
			
			req.getRequestDispatcher("BookStore").forward(req, resp);;
		}else {
			resp.sendRedirect("register.jsp");
		}
		
	}
}
