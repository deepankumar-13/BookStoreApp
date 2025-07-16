package com.Book.Servlet;

import java.io.IOException;
import java.util.regex.Pattern;
import com.Book.Imp.UserDAOImp;
import com.Book.Interface.UserDAO;
import com.Book.Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/registerUser")
public class RegisterUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String email = req.getParameter("email");
        String mobile = req.getParameter("mobile");
        
        String password_pattern = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$";
        String email_pattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        String mobile_pattern = "^\\d{10}$";

        Pattern p_pattern = Pattern.compile(password_pattern);
        Pattern e_pattern = Pattern.compile(email_pattern);
        Pattern m_pattern = Pattern.compile(mobile_pattern);

        if (!password.equals(confirmPassword)) {
            resp.sendRedirect("register.jsp?error=password_mismatch");
            return;
        }

        if (!p_pattern.matcher(password).matches()) {
            resp.sendRedirect("register.jsp?error=invalid_password");
            return;
        }

        if (!e_pattern.matcher(email).matches()) {
            resp.sendRedirect("register.jsp?error=invalid_email");
            return;
        }

        if (!m_pattern.matcher(mobile).matches()) {
            resp.sendRedirect("register.jsp?error=invalid_mobile");
            return;
        }

        String username = req.getParameter("username");
        String address = req.getParameter("address");
        long mobileNumber = Long.parseLong(mobile);
        String name = req.getParameter("name");

        User user = new User();
        user.setEmail(email);
        user.setMobile(mobileNumber);
        user.setUsername(username);
        user.setPassword(password);
        user.setAddress(address);
        user.setName(name);

        session.setAttribute("loggedInUser", user);

        UserDAO newUser = new UserDAOImp();
        int res = newUser.insertUser(user);

        if (res != 0) {
            resp.sendRedirect("login.jsp");
        } else {
            resp.sendRedirect("register.jsp?error=insert_failed");
        }
    }
}
