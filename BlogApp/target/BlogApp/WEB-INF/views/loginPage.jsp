<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="/BlogApp/resources/css/myfile.css?v=2"
    rel="stylesheet">
</head>
<body>
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
        <a class="nav-link" href="createblog">Write your First Blog</a>
        <a class="nav-link" href="userlogin">Login</a>
        <a class="nav-link" href="users">SignUp</a>
      </div>
    </div>
  </div>
</nav>

<header>
<h2>We hope you find something that delights you</h2>
</header>
<div class="loginpage">
<c:if test="${not empty message}">
    <c:out value="${message}" />
</c:if>
<form:form action="getuser" method="post" modelAttribute="user">  

			<div class="logindiv">
			<h3>Please Login into Your Accounnt</h3>
			<div class="emailinput">
            <form:label path="email">E-mail:</form:label>
            <form:input path="email" required/><br/>
            </div>
            
            <div class="passwordinput">
            <form:label path="Password">Password:</form:label>
            <form:password id="id_password" path="password" class="mypass"/>
            <i class="far fa-eye eye" id="togglePassword"></i>
            <input  name ="data" type = "hidden" value= "${data }" required/>
            </div>
            </div>
            <form:button class="mylogin-button">Login</form:button>
</form:form>
</div>
<script type="text/javascript" src="resources/Js/app.js?203" defer="defer"></script>
<footer class="index-footer">
   <p>CopyRight 2023</p>
   </footer>
</body>
</html>