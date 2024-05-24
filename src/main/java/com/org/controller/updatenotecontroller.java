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

@WebServlet("/update")
public class updatenotecontroller extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String title = req.getParameter("title");
		String description = req.getParameter("description");
		int noteid =Integer.parseInt(req.getParameter("noteid"));
	
		Note note=new Note();

		HttpSession session = req.getSession();
		User user =(User) session.getAttribute("Success");
		
		note.setTitle(title);
		note.setDescription(description);
		note.setNoteid(noteid);
		List<Note> list=new ArrayList<Note>();
		list.add(note);
		
		user.setNote(list);
		note.setUser(user);
		
		UserDao dao=new UserDao();
		User updated = dao.saveAndUpdateByUser(user);
		
		session.setAttribute("updated",updated );
		resp.sendRedirect("home.jsp");
	}

}
