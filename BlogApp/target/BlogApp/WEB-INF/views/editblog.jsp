<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Blog Page</title>
<link href="/BlogApp/resources/css/myfile.css"
    rel="stylesheet">
</head>
<body class="createblog" >
<h1>Write something cool to share with others</h1>
<h2 class="success">You have successfully created a blog</h2>
<div class="blogdiv">
<div class="blogdetails">
<h2>Enter Blog Details</h2>

<c:forEach var="blog" items="${blogs}">
<div class="blogitem">

   <form:form class ="create" action="updateblog" method="post" modelAttribute="blog">
 	<form:label path="blogTitle">Blog Title</form:label>
           <form:input path="blogTitle" name="blogTitle" value="${blog.blogTitle}" autofocus="true"/><br/>
             
 	<form:label path="blogArthur" >Blog Arthur</form:label>
           <form:input path="blogArthur" name="blogArthur" value= "${blog.blogArthur}"/><br/>
           <form:textarea path="blogContent" name="blogContent"  class="text-area" autocomplete="off" placeholder="${blog.blogContent }"></form:textarea><br/>
           
<input type="submit" value="Save Update">
</form:form>
</div>
	</c:forEach>

</div>
</div>
<a href="${pageContext.request.contextPath }/logout">Logout</a>
<script async src="/BlogApp/resources/Js/app.js?1201"></script>
</body>
</html>