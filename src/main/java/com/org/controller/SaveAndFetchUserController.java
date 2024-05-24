package com.org.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.Note;
import com.org.dto.User;
@WebServlet("/register")
public class SaveAndFetchUserController extends HttpServlet  {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		int age = Integer.parseInt(req.getParameter("age"));
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		long mobile = Long.parseLong(req.getParameter("mobile"));
		
		
		/*
		 * String title = req.getParameter("title"); String description =
		 * req.getParameter("description");
		 */
		User user = new User();
		user.setName(name);
		user.setAge(age);
		user.setEmail(email);
		user.setPassword(password);
		user.setMobile(mobile);
		
		/*
		 * Note note = new Note(); note.setTitle(title);
		 * note.setDescription(description); note.setUser(user);
		 * 
		 * List<Note> note1=new ArrayList<Note>(); note1.add(note);
		 * 
		 * user.setNote(note1);
		 */
		
		UserDao userDao = new UserDao();
		User user1 = userDao.saveAndUpdateByUser(user);
		//System.out.println(user1.getId());
		HttpSession session = req.getSession();
		if (user!=null)
		{
			
			session.setAttribute("registred", "Registration Done");
		}
		resp.sendRedirect("register.jsp");
		
		
	}

	
}
