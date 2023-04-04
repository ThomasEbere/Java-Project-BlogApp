<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Blog Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="/BlogApp/resources/css/myfile.css"
    rel="stylesheet">
</head>
<body class="createblog" >
<nav class="navbar navbar-expand-lg bg-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="/BlogApp">TOMSBLOG</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <a class="navbar-nav ms-auto"></a>
   
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="/BlogApp">Home</a>
        <a class="nav-link" href="showallblog">Read a blog</a>
        <a class="nav-link" href="BlogApp/createblog">Write your First Blog</a>
        <a class="nav-link" href="userlogin">Login</a>
        <a class="nav-link" href="users">SignUp</a>
      </div>
    </div>
  </div>
</nav>

<header>
<h2>We hope you find something that delights you</h2>
</header>
<h1>Write something cool to share with others</h1>
<h2>Enter Blog Details</h2>
<div class="blogdiv">
<div class="blogdetails">
 <c:forEach var="blog" items="${blogs}">
 <form:form class ="create" action="updateblog" method="post" modelAttribute="blog">
 	<form:label path="blogTitle">Blog Title</form:label>
           <form:input path="blogTitle" name="blogTitle" value="${blog.blogTitle}" autofocus="true" class="creatinput1"/><br/>
             
 	<form:label path="blogArthur" >Blog Arthur</form:label>
           <form:input path="blogArthur" name="blogArthur" value= "${blog.blogArthur}" class="creatinput2"/><br/>
           <form:textarea path="blogContent" name="blogContent"  class="text-area" autocomplete="off" placeholder="${blog.blogContent }"></form:textarea><br/>
           
<input type="submit" value="Save Update" class ="createblogbutton">
</form:form>
</c:forEach>
</div>
</div>
<a href="${pageContext.request.contextPath }/logout">Logout</a>
<script async src="/BlogApp/resources/Js/app.js?1201"></script>
<footer class="index-footer">
   <p>CopyRight 2023</p>
   </footer>
</body>
</html>