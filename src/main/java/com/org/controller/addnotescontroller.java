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

import com.mysql.cj.Session;
import com.org.dao.UserDao;
import com.org.dto.Note;
import com.org.dto.User;
@WebServlet("/addnotes")
public class addnotescontroller extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("Success");
		
		Note note = new Note();
		note.setTitle(title);
		note.setDescription(description);
		
	List<Note> list=new ArrayList<Note>();
	list.add(note);
	
	user.setNote(list);
	note.setUser(user);
	
	
	UserDao dao = new UserDao();
	dao.saveAndUpdateByUser(user);
	
	session.setAttribute("added", "Notes Added Successfully");
	resp.sendRedirect("home.jsp");
		
	}

}
