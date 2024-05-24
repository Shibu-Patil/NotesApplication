<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.form{
width:200px;
height:400px;
background-image: repeating-linear-gradient(white, skyblue);
text-align: center;
padding: 50px;
padding-left:100px;
padding-right:100px;
padding-top:80px;
position: relative;
left: 500px;
top: 40px;
border-radius: 100px;
border-top-style: groove;
border-bottom-style:groove;
border-bottom-color:skyblue;
border-width: 20px;
}
body {
	background-image: repeating-linear-gradient(black, yellow 10%);
}

.form button{
position: relative;
left: 00px;
top: 30px;
width: 50px;
height: 50px;
transition: 0.3s;
}

.form button:hover{
background-color: lime;
border-radius: 50%;
}

</style>
</head>

<body>
	<div class="form">
	<%String mess=(String)session.getAttribute("registred");
	if (mess!=null){
	%>
	<h2> <%=mess %></h2>
	<%}
	session.removeAttribute("registred");
	%>
	<form action="register" method="post">
		Enter Your Name <input type="text" name="name"> <br>
		<br> Enter Your Age <input type="number" name="age"> <br>
		<br> Enter Your Email Id <input type="email" name="email"><br>
		<br> Enter Your Password <input type="password" name="password"><br>
		<br> Enter Your Mobile Number <input type="tel" name="mobile"><br>
		<br>
		<br>
		<br> <input type="submit" value="Submit">
	</form>
	<div class=loginbutton"><a href="login.jsp"><button>Login</button></a></div>
	</div>
	
</body>
</html>