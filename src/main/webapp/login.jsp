<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

.box{
width: 250px;
height: 420px;
background-image: repeating-linear-gradient(white, skyblue 1%);
position: relative;
left:500px;
top: 40px;
text-align: center;
padding: 50px;
border-top-left-radius: 100px;
border-top-right-radius: 100px;
border-top-style: groove;
border-bottom-style:ridge;
border-width: 20px;
border-color: magenta;
}

body{
  background-image: repeating-linear-gradient(black, yellow 10%);
}

.box button{
position: relative;
left: 00px;
top: 30px;
width: 70px;
height: 70px;
transition: 0.3s;
}

.box button:hover{
background-color: lime;
border-radius: 50%;
}
.forgetbutt{
position: relative;
left: 60px;
top:-70px;
}
.loginbutton{
position: relative;
left: -40px;	
}
</style>
</head>
<body>
<div class="box">
<h1>
Enter Your Credentials
<% String message =(String)session.getAttribute("invalid");
if (message != null){
%>
<%= message %>

<%}

session.removeAttribute("invalid");
%>
</h1>
<form action="login" method="post">

		<br> Enter Your Email Id <input type="email" name="email"><br>
		<br> Enter Your Password <input type="password" name="password"><br>
		<br>
		<br> <input type="submit" value="Submit">


</form>
<div class="loginbutton"><a href="register.jsp"><button>Register</button></a></div>
<div class="forgetbutt"><a href="forgetmailpass.jsp"><button>Forget Details</button></a></div>
</div>
</body>
</html>