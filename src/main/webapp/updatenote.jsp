<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.org.dao.NoteDao"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.org.dto.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

.back{
width: 600px;;
height: 400px;
background-image: repeating-linear-gradient(pink, white 1%);
position: relative;
left: 350px;
top: 50px;
padding: 50px;
color: navy;
font-size: 20px;
border-radius: 200px;
border-left: groove;
border-right: groove;
border-width: 20px;
border-color: blue;
}

.title{
text-align: center;
display: flex;	
flex-direction: column;
}
.description{
text-align: center;
display: flex;	
flex-direction: column;
}

.addnote {
	float: left;
	position: relative;
	top: -350px;
	left:-300px;
	font-size: 70px;
	text-decoration:none;
	right: 50px;
	background-color: black;
	width: 70px;
	text-align: center;
	border-radius: 50%;
	transition: 0.3s;
}


.addnote a{
text-decoration: none;
color: white;
}

.addnote:hover {
	transform: rotate(270deg);
	background-color: darkmagenta;
}

.addnote a:hover{
color: black;
}
.update input{
width: 600px;
margin-top: 20px;
}

.update input:hover{
background-color: orange;
}


body{
background-color: palegreen;
}
</style>
</head>
<body>
		<% int noteid =Integer.parseInt(request.getParameter("noteid"));
		Note note=new Note();
		note.setNoteid(noteid);
		NoteDao notedao=new NoteDao();
		Note note1=notedao.fetchById(noteid);
		
		%>
		<form action="update" method="post">
		<div class="back">
		  <div class="title"><br> Title <input type="text" name="title" value="<%=note1.getTitle()%>"><br></div>	
		  <div class="description"><br>Decsription<textarea rows="10" cols="50" name="description"><%=note1.getDescription() %></textarea></div> 
		  <input type="hidden" name="noteid" value="<%= noteid%>">
		 <div class="update"><input type="submit" value="Update"></div> 
		  <div class="addnote"> <a href="home.jsp"> <strong> ^ </strong> </a> </div>
		</div>
		</form>

</body>
</html>

</body>
</html>