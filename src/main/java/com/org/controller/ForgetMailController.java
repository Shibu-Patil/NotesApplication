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

@WebServlet("/changemail")
public class ForgetMailController extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long mobile =Long.parseLong(req.getParameter("mobile"));
		String name = req.getParameter("name");
		int age =Integer.parseInt(req.getParameter("age"));
		
		HttpSession session = req.getSession();
		
		User user=new User();
		user.setMobile(mobile);
		user.setName(name);
		user.setAge(age);
		
		UserDao dao = new UserDao();
		String fetchMail = dao.fetchMail(user);
		
		if (fetchMail!=null)
		{
			session.setAttribute("forgetmail", "Your mail id is:-"+fetchMail);
			resp.sendRedirect("forgetmail.jsp");
		}
		else {
			session.setAttribute("forgetmail", "Invalid Credentials");
			resp.sendRedirect("forgetmail.jsp");
		}
	}

}
