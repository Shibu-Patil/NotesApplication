<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

body{
background-color: beige;
}
.box{
height: 200px;
width: 400px;
background-color: gray;
border-style:groove;
border-width: 20px;
position: relative;
left: 450px;
top:150px;
text-align: center;
transition: 0.8s;

}

.box:hover{
border-color: deeppink;
background-color: yellow;
}

.box button {
	width: 50px;
	height: 50px;
	position:relative;
	left:-40px;
	margin-left: 80px;
	top: 20px;
	transition: 0.8s;
}

.box button:hover{
background-color: red;
border-radius: 50%;
}

</style>
</head>
<body>

<div class="box">
<h2>Are your sure you want to logout</h2>
<a href="logout"><button>Yes</button></a>
<a href="home.jsp"><button>No</button></a>
</div>

</body>
</html>