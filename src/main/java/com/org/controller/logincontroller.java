package com.org.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/login")
public class logincontroller extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		User user=new User();
		user.setEmail(email);
		user.setPassword(password);
		UserDao dao = new UserDao();
		User u = dao.emailandpassword(email, password);
		
		
		//System.out.println(u.getName());
		
		HttpSession session = req.getSession();
		
		
		if (u!=null)
		{
		session.setAttribute("Success", u);
		resp.sendRedirect("home.jsp");
		}
		else {
			session.setAttribute("invalid", "Invalid Credentials");
			resp.sendRedirect("login.jsp");
			
		}
	}

}
