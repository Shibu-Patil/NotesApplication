<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.container{
width: 300px;
height: 300px;
background-image: repeating-linear-gradient(red, lime  );
align-content: center;
text-align: center;
transitation:0.5s;
position: relative;
left: 500px;
top: 80px;
padding: 50px;
border-radius: 100px;
border-top-style: ridge;
border-bottom-style: ridge;
border-width: 30px;
border-color: yellow;
}

.container:hover{
background-image: repeating-linear-gradient(lime, red  );
}
body {
	background-color: indigo;
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
	background-color: cornsilk;
}

.addnote a:hover{
color: black;
}
</style>
</head>
<body>
<%User user =(User) session.getAttribute("Success");
String password = user.getPassword();
 %>
 <div class="container">
<%String msg=(String)session.getAttribute("pass");
if (msg!=null){
%>
<h2><%=msg %></h2>
<%}session.removeAttribute("pass"); %>
<form action="changepassword" method="post">
Enter Old Password<input type="password" name="oldpassword"> <br> <br>
Enter New Password<input type="password" name="newpassword"><br> <br>
Enter Confirm Password<input type="password" name="confirmpassowrd"><br> <br><br> <br>
<input type="hidden" name="password" value="<%=password %>">
<input type="submit" value="Confirm Change">

</form>

 <div class="addnote"> <a href="home.jsp"> <strong> ^ </strong> </a> </div>
</div>
</body>
</html>