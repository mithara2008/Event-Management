<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<table >
	<c:forEach var="ta" items="${taDetails}">
	
	<c:set var="Tid" value="${ta.Tid}"/>
	<c:set var="Tname" value="${ta.Tname}"/>
	<c:set var="Description" value="${ta.Description}"/>
	<c:set var="Assign_To" value="${ta.Assign_To}"/>
	<c:set var="dueDate" value="${ta.dueDate}"/>
	<c:set var="status" value="${ta.status}"/>
	
	
	<tr>
		<td>Task Assignment ID</td>
		<td>${ta.Tid}</td>
	</tr>
	<tr>
		<td>Task Name</td>
		<td>${ta.Tname}</td>
	</tr>
	<tr>
		<td>Task Description</td>
		<td>${ta.Description}</td>
	</tr>
	<tr>
		<td>Assign To</td>
		<td>${ta.Assign_To}</td>
	</tr>
	<tr>
		<td>Due Date</td>
		<td>${ta.dueDate}</td>
	</tr>
	<tr>
		<td>Status</td>
		<td>${ta.status}</td>
	</tr>
	
	

	</c:forEach>
	</table>
	
	<c:url value = "updateTask.jsp" var = "taupdate">
		<c:param name="Tid" value = "${Tid}"></c:param>
		<c:param name="Tname" value = "${Tname}"></c:param>
		<c:param name="Description" value = "${Description}"></c:param>
		<c:param name="Assign_To" value = "${Assign_To}"></c:param>
		<c:param name="dueDate" value = "${dueDate}"></c:param>
		<c:param name="status" value = "${status}"></c:param>
		
		
	</c:url>
	
	<a href = "${taupdate}">
	
	<input type = "button" name = "updateTask" value = "Update Task">
	
	</a>
	
	
	
	<c:url value = "deleteTask.jsp" var = "tadelete">
		<c:param name="Tid" value = "${Tid}"></c:param>
		<c:param name="Tname" value = "${Tname}"></c:param>
		<c:param name="Description" value = "${Description}"></c:param>
		<c:param name="Assign_To" value = "${Assign_To}"></c:param>
		<c:param name="dueDate" value = "${dueDate}"></c:param>
		<c:param name="status" value = "${status}"></c:param>
		
	</c:url>
	
	<a href ="${tadelete}">
	
	<input type = "button" name = "deleteTask" value = "delete Task">
	
	</a>
	
	

	

</body>
</html>