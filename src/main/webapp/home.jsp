<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.carddiv {
	width: 100%;
	height: 100px;
	display:flex;
	flex-wrap: wrap;
}

.card {
	background-color: lightcyan;
	width: 250px;
	height: 80px;
	border-width: 10px;
	border-color: honeydew;
	border-style: outset;
	transition: 0.3s;
	margin-top: 20px;
	margin-left: 50px;	
	overflow: hidden;	
}

.card:hover {
	width: 270px;
	height: 90px;
	left: 150px;
	right: 50px;
	background-color:gray;
	border-color: darkkhaki;
}

.view {
 	position: relative;
 	left:10px;
 	bottom: -32px;
}

.update{
position: relative;
left: 85px;
bottom: -11px;
}

.delete{
position: relative;
left: 180px;
bottom: 10px;
}

.addnote {
	float: right;
	position: relative;
	top: 300px;
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
	transform: rotate(180deg);
	background-color: indigo;
}

.addnote a:hover{
color: yellow;
}

.title{
text-align: center;
}

.view button:hover{
background-color: lime;
}

.update button:hover{
background-color: orange;
}

.delete button:hover{
background-color: red;
}

body{
background-color: palegreen;
}

h1{
text-align: center;
}

h2{
text-align: center;
}

.navbar{
width: 100%;
height: 50px;
background-color: red;
}

.but1 button {
width:100px;
height:100px;
position:relative;
top:-80px;
left:-70px;
border-radius: 50%;
border-style: groove;
border-width: 15px;
transition:0.3s;
}

.but1 button:hover {
position: relative;
left: -10px;

}

.but2 button {
width:100px;
height:100px;
position:relative;
top:-176px;
left:1320px;
border-radius: 50%;
border-style: groove;
border-width: 15px;
transition:0.3s;
}

.but2 button:hover {
position: relative;
left:1260px;

}
</style>


</head>
<body>
<div class="navbar">
	<h1>
		Hello
		<%
	User user = (User) session.getAttribute("Success");
	User user1=(User)session.getAttribute("updated");
	%>

		<%=user.getName()%>
		Welcome  to Home Page
		</h1>
		<div class="but1">
		<a href="profile.jsp?id=<%= user.getId() %>"><button>Profile</button></a>
		</div>
		<div class="but2">
		<a href="logout.jsp"><button>Logout</button></a>
		</div>
		</div>
		
		 <h2>
		
		<%if (user1!=null){
		
			String msg="Update Successfull";
		%>
		
		<%=msg %>
		<%}
		session.removeAttribute("updated");
		%>
	</h2>

	<div class="carddiv">
		<%
		int id = user.getId();
		UserDao dao = new UserDao();
		User u = dao.fetchUserById(id);
		List<Note> list = u.getNote();
		for (Note note : list) {
		%>
		<div class="card" >
		<div class="title">	<strong><%=note.getTitle()%></strong> </div>

			<div class="button">
				<div class="view">
					<a href="viewnotes.jsp?noteid=<%=note.getNoteid()%>"><button>View</button></a>
				</div>
				<div class="update">
					<a href="updatenote.jsp?noteid=<%=note.getNoteid()%>"><button>Update</button></a>
				</div>
				<div class="delete">
					<a href="delete.jsp?noteid=<%=note.getNoteid()%>"><button>Delete</button></a>
				</div>
			</div>
			
		</div>
		<%
		}
		%>
		

	</div>

<div class="addnote"> <a href="addnotes.jsp"> <strong>+</strong> </a> </div>
</body>
</html>