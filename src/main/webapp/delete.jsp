<%@page import="com.org.dao.NoteDao"%>
<%@page import="com.org.dto.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% int noteid=Integer.parseInt( request.getParameter("noteid"));
   Note note= new Note();
   note.setNoteid(noteid);
   
   NoteDao dao=new NoteDao();
   dao.removeByid(noteid);
   
   response.sendRedirect("home.jsp");
%>
</body>
</html>