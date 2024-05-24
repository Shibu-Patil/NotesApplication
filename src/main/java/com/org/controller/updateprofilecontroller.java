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

@WebServlet("/updateprofile")
public class updateprofilecontroller extends HttpServlet {
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 	int id =Integer.parseInt(req.getParameter("id"));
	 	String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		
		
		
		HttpSession session = req.getSession();
		User user =(User) session.getAttribute("Success");
		user.setId(id);
		user.setName(name);
		user.setAge(age);
		user.setEmail(email);
		user.setMobile(mobile);

		
		UserDao userDao = new UserDao();
		User user1 = userDao.saveAndUpdateByUser(user);
		
		
		if (user1!=null)
		{
			
			session.setAttribute("profileupdated", "Profile Updated");
		}
		resp.sendRedirect("updateprofile.jsp");
		
}
}
