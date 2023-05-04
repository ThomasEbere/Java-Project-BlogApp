<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Blogs</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="resources/css/myfile.css?v=2.2"
    rel="stylesheet">
</head>
<body>
        <mytags:navbar/>
<header>
<h2>We hope you find something that delights you</h2>
</header>
<div class ="welcome">

	<c:choose>
	    <c:when test="${blogs.isEmpty()}">
	       <h1>Opps No Blog Yet</h1>
	       
	       <div class="mywelcome">
	       <div>
	      	<a href="createblog"><button>Create your first Blog</button></a>
	      	</div>
	      	</div>
	 </c:when>    
	    <c:otherwise>
	     <c:forEach var="blog" items="${blogs}">
			<div class="card w-25 move">
		    <div class="card-body">
		    <h5 class="card-title">${blog.blogTitle }</h5>
		    <h5 class="card-title">${blog.blogArthur }</h5>
		    <p class="card-text">${blog.blogContent }</p>
	        <p class="blogDate">${blog.blogDate }</p>
	        <p>${blog.blogid }</p>
		    <a href="showblog/${blog.blogid} " class="btn btn-primary">Read</a>
		    <a href="editmyblog/${blog.blogid} " class="btn btn-secondary">Edit</a>
	        <a href="delete/${blog.blogid} " class="btn btn-secondary">Delete</a>
	    
	 		</div>
  </div>
	</c:forEach>
        <br />
    </c:otherwise>
</c:choose>

	</div>
<footer class="index-footer">
   <p>CopyRight 2023</p>
   </footer>
</body>
</html>