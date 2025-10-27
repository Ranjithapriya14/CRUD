<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view students</title>
</head>
<h2>I'm in view page</h2>
<body>
<h2>Booking Details</h2>
<p>${student.id}</p>
<p>${student.name}</p>
<p>${student.email}</p>
<p>${student.course}</p>

<a href="${pageContext.request.contextPath}/students/list">Back to List</a>
</body>
</html>
