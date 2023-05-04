<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link href="resources/css/myfile.css?v=4"
    rel="stylesheet">
<body >
        <mytags:navbar/>
<c:forEach var ="blog" items="${blogs}">

</c:forEach>
<footer class="index-footer">
   <p>CopyRight 2023</p>
   </footer>
</body>
</html>