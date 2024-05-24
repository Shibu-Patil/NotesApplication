<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.container{
width: 250px;
height: 450px;
background-image: repeating-linear-gradient(red, lime  );
align-content: center;
text-align: center;
transitation:0.5s;
position: relative;
left: 500px;
top: 10px;
padding: 50px;
padding-left:100px;
padding-right:100px;	
border-radius: 100px;
border-top-style: ridge;
border-bottom-style: ridge;
border-width: 30px;
border-color: yellow;
}
a{
text-decoration: none;
position: relative;
top:-60px;
}

.container:hover{
background-image: repeating-linear-gradient(lime, red  );
}
.form{
position: relative;
top: -50px;
}
body {
	background-color: indigo;
}

.message{
position: relative;
top: -70px;
}
</style>
</head>
<body>

 <div class="container">
 <h1><a href="login.jsp">My Notes Application</a></h1>
<%String msg=(String)session.getAttribute("forgetpass");
if (msg!=null){
%>
<div class="message">
<strong><%=msg %></strong> 
</div>
<%}session.removeAttribute("forgetpass"); %>

<div class="form">
<form action="changepass" method="post">
Enter Your Mail id<input type="email" name="mail"> <br> <br>
Enter Your Name<input type="text" name="name"> <br> <br>
Enter Your Age<input type="number" name="age"> <br> <br>
Enter New Password<input type="password" name="newpassword"><br> <br>
Enter Confirm Password<input type="password" name="confirmpassowrd"><br> <br><br> <br>
<input type="submit" value="Confirm Change">

</form>
</div>
</div>
</body>
</html>