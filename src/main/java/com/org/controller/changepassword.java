package com.org.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.org.dao.UserDao;
import com.org.dto.User;

@WebServlet("/changepassword")
public class changepassword extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		User user =(User) session.getAttribute("Success");
		String password = req.getParameter("password");
		System.out.println(password);
		String oldpass = req.getParameter("oldpassword");
		System.out.println(oldpass);
		String newpass = req.getParameter("newpassword");
		System.out.println(newpass);
		String confirmpass = req.getParameter("confirmpassowrd");
		//System.out.println(confirmpass);
		if (newpass.equals(confirmpass))
		{
			if (password.equals(oldpass))
			{
			user.setPassword(newpass);
			UserDao userDao = new UserDao();
			userDao.saveAndUpdateByUser(user);
			session.setAttribute("pass", "Password changed Successfullly");
			resp.sendRedirect("changepass.jsp");
			}
			else {
				session.setAttribute("pass", "You have entered wrong old password");
				resp.sendRedirect("changepass.jsp");
			}
		}
		
		else {
			session.setAttribute("pass", "New password and Confirm Password did not match");
			resp.sendRedirect("changepass.jsp");
		}
		
	}

}
