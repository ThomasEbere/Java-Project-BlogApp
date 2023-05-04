<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="resources/css/myfile.css?v=1"
    rel="stylesheet">
</head>
<body>
        <mytags:navbar/>
<header>
<h2>Changing Lives By Sharing Stories</h2>
</header>

<div class="welcome">
<h2>Welcome ${firstname}</h2>

<div class="innerwelcome">

<div>
<a href="showallblog"><button>View All Blogs</button></a>
</div>
<div>
<a href="seemyblog"><button>Review your written Blogs</button></a>
</div>
<div>
<a href="createblog"><button>Write a blog</button></a>
</div>

</div>

<a href="${pageContext.request.contextPath }/logout">Logout</a>
</div>
<footer class="index-footer">
   <p>CopyRight 2023</p>
   </footer>
</body>
</html>