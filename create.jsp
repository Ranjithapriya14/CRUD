<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>create page</title>
</head>
<body>
    <h2>${student.id != null ? 'Edit' : 'Add New'} Student</h2>
    <form action="${pageContext.request.contextPath}/students/save" method="post" enctype="multipart/form-data">
    
        <input type="hidden" name="id" value="${student.id}"/>
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${student.name}" required/><br/>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${student.email}" required/><br/>

        <label for="course">Course:</label>
        <input type="text" id="course" name="course" value="${student.course}" required/><br/>

        <label for="image">Image:</label>
        <input type="file" id="image" name="image1" /><br/> 

        <input type="submit" value="Save"/>
    </form>
    <a href="${pageContext.request.contextPath}/students/list">Back to list</a>
</body>
</html>
