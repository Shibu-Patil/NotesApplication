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
position: relative;
left: 450px;
background-image: repeating-linear-gradient(magenta, white);
text-align: center;	
border-radius: 50px;
color: black;
border-width: 50px;
border-top-style:groove;
border-bottom-style: groove;
border-color: magenta;
}

.hiddenbox{
width: 400px;
height: 500px;
position: relative;
top:-500px;;
left: 50px;
background-color: white;
}
.hiddenbox1{
width: 300px;
height: 500px;
position: relative;
top:-1000px;;
left: 950px;
background-color: white;
}
#contain{
width:120%;
height:25px;
background-color:black;
color:white;
position: relative;
text-align: left;
left: -150px;
transition: 2s;
padding-left: 10px;
border-left-style: groove;
border-left-width: 10px;
}

#contain:hover{
left:150px;
}
.form{
position: relative;
top: 50px;
}

.addnote {
	float: left;
	top:-50px;
	left:50px;
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
	background-color: cyan;
}

.addnote a:hover{
color: black;
}
</style>
</head>
<body>

<div class="box">
<h1>User Profile</h1>
<% User user= (User)session.getAttribute("Success");%>


<h2> Name</h2><div class="name" id="contain"> <%=user.getName() %></div>
<h2> Age</h2> <div class="age" id="contain"><%=user.getAge()%></div>
<h2> Mobile</h2><div class="mobile"id="contain"><%=user.getMobile() %></div>
<h2> Email</h2><div class="email" id="contain"><%=user.getEmail()%></div>
<div class="form" >
<a href="changepass.jsp"><button>Change Password</button></a>
<a href="updateprofile.jsp?id=<%=user.getId() %>"><button>Update Profile</button></a>
</div>
</div>
<div class="hiddenbox"> <div class="addnote"> <a href="home.jsp"> <strong> ^ </strong> </a> </div></div>
<div class="hiddenbox1"></div>

</body>
</html>