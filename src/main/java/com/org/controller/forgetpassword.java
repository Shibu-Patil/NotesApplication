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

@WebServlet("/changepass")
public class forgetpassword extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("mail");
		int age =Integer.parseInt(req.getParameter("age"));
		String password = req.getParameter("newpassword");
		String confirmpassowrd = req.getParameter("confirmpassowrd");
		
		HttpSession session = req.getSession();
		
		if (password.equals(confirmpassowrd))
		{
			User user = new User();
			user.setEmail(email);
			user.setName(name);
			user.setAge(age);
			user.setPassword(password);
			
			UserDao dao = new UserDao();
			boolean changePassword = dao.changePassword(user);
			
			if (changePassword)
			{
			
			session.setAttribute("forgetpass", "Password changed Successfullly");
			resp.sendRedirect("forgetpassword.jsp");
			}
			else {
				session.setAttribute("forgetpass", "Invalid Credentials");
				resp.sendRedirect("forgetpassword.jsp");
			}
		}

		else {
			session.setAttribute("forgetpass", "New Password and Confirm Password did Not Match");
			resp.sendRedirect("forgetpassword.jsp");
			
		}
		
	}

}
