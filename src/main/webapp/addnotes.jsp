<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

.back{
width: 600px;;
height: 400px;
background-color: brown;
position: relative;
left: 350px;
top: 50px;
padding: 50px;
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
.add{
display: flex;	
flex-direction: column;
position: relative;
top: 50px;
}

.add input{
background-color: yellow;
}
.add input:hover{
background-color: lime;
}
</style>
</head>
<body>
<form action="addnotes" method="post">

		<div class="back">
		  <div class="title"><br> Enter title <input type="text" name="title"><br></div>	
		  <div class="description"><br> Enter Decsription<textarea rows="10" cols="50" name="description"></textarea></div> 
		  <div class="add" > <br> <input type="submit" value="Add"></div>
		</div>
</form>
</body>
</html>