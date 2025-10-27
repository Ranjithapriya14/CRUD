<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list students</title>
</head>
<body>
<h2>I'm in list page</h2>
<table border="1">
<thead>
<tr>
<th>ID</th>
<th>Name</th>
<th>EmailId</th>
<th>Course</th>
<th>Image</th>
<th>Action</th>
</tr>
</thead>
<tbody>
<c:forEach var="student" items="${studentsstulist}">
<tr>
<td>${student.id}</td>
<td>${student.name}</td>
<td>${student.email}</td>
<td>${student.course}</td>
<td>
<c:if test="${not empty student.base64Image}">
<img src="data:image/jpeg;base64,${student.base64Image}"
alt="Student Image"
style="max-width:100px;max-height:100px;">
</c:if>
</td>
<td>
<a href="${pageContext.request.contextPath}/students/edit/$(student.id)">Edit</a>
<a href="${pageContext.request.contextPath}/students/delete/$(student.id)">Delete</a>
<a href="${pageContext.request.contextPath}/students/view/$(student.id)">View</a>
</td>
</tr>
</c:forEach>
</table>
</tbody>
<a href="${pageContext.request.contextPath}/students/new">Add New Student</a>
</body>
</html>
