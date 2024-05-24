<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.para{
width: 70%%;
height: 100%;
background-image: repeating-linear-gradient(orchid, gray );
color: black;
padding: 50px;
border-radius: 50px;
border-left-style: groove;
border-right-style: ridge;
border-width: 20px;
border-color: cyan;
}

h1{
text-align: center;
color: white;
}

.heading{
width: 100%;
height: 80px;
background-image: repeating-linear-gradient(white, black );
margin-bottom: 10px;
border-radius: 50px;
border-top-style: groove;
border-bottom-style: ridge;
border-width: 20px;
border-color: deeppink;
}

.heading button{
float: right;
position: relative;
right: 50px;
padding: 10px;
top: -75px;
margin-left: 20px;
background-color: orange;
width:70px;
height:70px;
border-style:groove;
border-width:2px;
transition: 0.3s;
border-radius: 10px;
}
.heading button:hover{
border-radius: 50%;
background-color: lime;
}
body {
	background-color: yellow;
}
</style>
</head>

<body>
<div class="heading">
<h1>Welcome to our Notes Application! </h1>
<a href="login.jsp"><button>Login</button></a>
<a href="register.jsp"><button>Register</button></a>
</div>
<div class="para">
<p>This web page provides a convenient platform for creating, organizing, and managing your notes seamlessly. Powered by Hibernate, a robust Object-Relational Mapping (ORM) framework, our application ensures efficient database interactions while delivering a smooth user experience.

<br> <br>  <strong>Features: </strong> <br> <br>

<br><strong> User-friendly Interface:</strong>  Our web page boasts an intuitive and responsive interface designed to enhance your note-taking experience. Easily navigate through different sections and functionalities with just a few clicks. <br>

<br><strong> Note Creation and Editing:</strong>  Create new notes effortlessly using the "Create Note" feature. With Hibernate seamlessly managing the database interactions, you can edit your notes with ease, ensuring that your thoughts and ideas are captured accurately. <br>

<br><strong>Organization and Categorization:</strong>  Keep your notes organized by categorizing them into folders or tagging them with relevant keywords. Our web page allows you to categorize your notes efficiently, making it easier to retrieve them when needed. <br>

<br><strong>Search Functionality:</strong>  Quickly locate specific notes using our powerful search functionality. With Hibernate optimizing database queries in the background, you can find the information you need within seconds. <br>

<br><strong>Secure and Reliable:</strong>  Rest assured that your notes are safe and secure with our application. With built-in security measures and Hibernate's transaction management capabilities, your data is protected from unauthorized access and potential data loss. <br>

<br><strong>Responsive Design:</strong>  Whether you're accessing our web page from a desktop, tablet, or smartphone, you'll enjoy a seamless and consistent user experience. Our responsive design ensures that the layout adapts to different screen sizes, providing optimal usability across devices.<br>

<br><strong>Efficient Database Interaction:</strong>  Hibernate simplifies the interaction between our web page and the underlying database, eliminating the need for complex SQL queries. This results in faster performance and improved scalability, ensuring that our application can handle a large volume of notes efficiently.<br>

<br>Experience the convenience and efficiency of note-taking with our Notes Application web page. Start organizing your thoughts and ideas today with Hibernate-powered database management at your fingertips!</p>
</div>
</body>
</html>