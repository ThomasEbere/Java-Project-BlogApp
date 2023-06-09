<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Blog Page</title>
<link href="resources/css/myfile.css"
    rel="stylesheet">
</head>
<body class="createblog" >
<h1>Write something cool to share with others</h1>
<h2 class="success">You have successfully created a blog</h2>
<div class="blogdiv">
<div class="blogdetails">
<h2>Enter Blog Details</h2>
<form:form class ="create" action="getblog" method="post" modelAttribute="blog">
 	<form:label path="blogTitle">Blog Title</form:label>
           <form:input path="blogTitle" name="blogTitle" autofocus="true"/><br/>
             
 	<form:label path="blogArthur" >Blog Arthur</form:label>
           <form:input path="blogArthur" name="blogArthur" value= "${firstname}"/><br/>
           <form:textarea path="blogContent" name="blogContent" placeholder="Share your thoughts....." class="text-area"/><br/>
           
<input type="submit" value="Share your thoughts">
</form:form>
</div>
</div>
<a href="${pageContext.request.contextPath }/logout">Logout</a>

<script type="text/javascript" src="resources/Js/app.js"></script>
</body>
</html>


