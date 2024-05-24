<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.box{
width: 500px;
height: 500px;
background-image:  repeating-linear-gradient(white, yellow );
text-align: center;
align-content: center;
padding: 50px;
border-top-right-radius:50%;
border-bottom-right-radius:50%;
border-width: 20px;
border-right-style: groove;
border-color: red;
}

.addnote {
	float: left;
	top:-450px;
	left:-10px;
	position: relative;
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
	background-color: deeppink;
}

.addnote a:hover{
color: black;
}
body {
	background-color: indigo;
}
</style>
</head>
<body>
<div class="box">
<h1>Update Profile</h1>
<% User user= (User)session.getAttribute("Success");
String msg=(String)session.getAttribute("profileupdated");
if (msg!=null)
{
%>
<%=msg %>

<%}
session.removeAttribute("profileupdated");
%>

<form action="updateprofile" method="post">
<h2> Name</h2><div  class="name" id="contain" > <input type="text" name="name" value="<%=user.getName() %>">  </div>
<h2> Age</h2> <div class="age" id="contain" > <input type="number" name="age" value="<%=user.getAge()%>"> </div>
<h2> Mobile</h2><div class="mobile"id="contain"> <input type="tel" name="mobile" value="<%=user.getMobile() %>"> </div>
<h2> Email</h2><div class="email" id="contain" > <input type="email" name="email"value="<%=user.getEmail()%>" > </div>
<input type="hidden" name="id" value="<%=user.getId() %>">
<br> <br>
<input type="submit" value="Update">
</form>
<div class="addnote"> <a href="home.jsp"> <strong> ^ </strong> </a> </div>
</div>
</body>
</html>