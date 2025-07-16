package com.Book.Servlet;

import java.io.IOException;

import com.Book.Imp.AdminDAOImp;
import com.Book.Interface.AdminDAO;
import com.Book.Model.Admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/admin")
public class AdminServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		AdminDAO adminobj = new AdminDAOImp();
		Admin admin = new Admin();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		admin = adminobj.fetchAdmin(username);
		String checkPassword = admin.getPassword();
		
		if(password.equals(checkPassword)) {
			session.setAttribute("username",username);
			req.getRequestDispatcher("AdminBooks").forward(req, resp);
		}else {
			resp.sendRedirect("admin.jsp");
		}
	}

}
