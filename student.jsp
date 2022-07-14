<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td><a href="students/addStudent">Add a new Student</a></td>
		<td><a href="/DebateEvent/logout">Logout</a></td>
	</tr>
</table>
<form action="students/search" method="post">
<table>
<tr><td>Name</td><td><input type="text" name="name"/></td></tr>
<tr><td>Course</td><td><input type="text" name="course"/></td></tr>
<tr><td colspan="2"><input type="submit"/></td></tr>
</table>
</form>

<table border="1">
<tr>
<th>Id</th><th>name</th><th>Course</th><th>Country</th><th>Action</th>
</tr>
<c:forEach items="${books}" var="b">
<tr>
<td>${b.id}</td>
<td>${b.name}</td>
<td>${b.author}</td>
<td>${b.category }</td>
<td><a href="updateStudent?id=${b.id}">Update</a><a href="deleteStudent?id=${b.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>

