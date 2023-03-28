<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="resources/css/myfile.css"
    rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div class="card w-25 move">
  <div class="card-body">
    <h5 class="card-title">${blogs.blogTitle }</h5>
    <h5 class="card-title">By: ${blogs.blogArthur }</h5>
    <p class="card-text">${blogs.blogContent }</p>
    <p class="blogDate">${blogs.blogDate }</p>
  </div>
  </div>
  <a href="editblog"><button> Edit Blog</button></a>
</body>
</html>