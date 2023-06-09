<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="/BlogApp/resources/css/myfile.css?v=6"
    rel="stylesheet">
</head>
<body>
        <mytags:navbar2/>
<header>
<h2>We hope you find something that delight you</h2>
</header>
<div class="loginpage">
<form:form action="createuser" method="post" modelAttribute="user">

			<div class="signup">
			
			<h3>Please your Details to Register</h3>
			
			<div class="sign firstname">
            <form:label path="FirstName">First name:</form:label>
            <form:input path="FirstName" required="required"/><br/>
             </div>
             
             <div class=" sign lastName">
            <form:label path="LastName">LastName:</form:label>
            <form:input path="LastName" required="required"/><br/>
            </div>
            
            <div class=" sign email">
            <form:label path="email">E-mail:</form:label>
            <form:input path="email" required="required"/><br/>
            </div>
            
            <div class="sign password">
            <form:label path="Password">Password:</form:label>
            <form:password path="password" class="signpass"/><br/>
       		</div>
            
            <form:button class="reg">Register</form:button>
            </div>
</form:form>
</div>
<footer class="index-footer">
   <p>CopyRight 2023</p>
   </footer>
</body>
</html>