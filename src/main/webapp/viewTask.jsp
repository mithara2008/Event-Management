<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    h1 {
        text-align: center;
        background-color:  #ff6600;
        color: #fff;
        padding: 10px;
    }
     .navbar {
        background-color: #333; /* Dark background color for the navigation bar */
        overflow: hidden;
    }

    .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    .navbar a:hover {
        background-color: #ddd; /* Light background color on hover */
        color: black;
    }

    table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        border: 1px solid #ccc;
        background-color: #fff;
    }

    th, td {
        text-align: left;
        padding: 10px;
        border: 1px solid #ccc;
    }

    th {
        background-color: #007bff;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    form {
        text-align: center;
        margin-top: 20px;
    }

    input[type="submit"] {
        background-color: #00a3cc;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #008bad;
    }
     input[type="button"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
    }

    input[type="button"]:hover {
        background-color: #45a049; /* Darker green on hover */
    }
</style>
</head>
	 <div class="navbar">
        <a href="taskInsert.jsp">Create Task</a>
        <a href="useracc.jsp">Dashboard</a>
    </div>

	<h1>Task Assignment</h1>
<body>
	
    <table>
        <thead>
            <tr>
                <th>Task ID</th>
                <th>Task Name</th>
                <th>Description</th>
                <th>Assign To</th>
                <th> Due Date</th>
                <th>Status</th>
                <th>Delete</th>
                <th>Update</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="ta" items="<%= task_assignment.taskDBUtil.viewTaskAssignment() %>">
                <tr>
                    <td>${ta.getTid()}</td>
                    <td>${ta.getTname()}</td>
                    <td>${ta.getDescription()}</td>
                    <td>${ta.getAssign_To()}</td>
                    <td style="padding: 10px 30px;">${ta.getDueDate()}</td>
                    <td>${ta.getStatus()}</td>
                    <td>
                        <form action="deleteTask.jsp" method="post">
                            <input type="hidden" name="Tid" value="${ta.getTid()}" readonly>
                             <input type="hidden" name="Tname" value="${ta.getTname()}" readonly>
                            <input type="hidden" name="Description" value="${ta.getDescription()}" readonly>
                            <input type="hidden" name="Assign_To" value="${ta.getAssign_To()}" readonly>
                            <input type="hidden" name="dueDate" value="${ta.getDueDate()}" readonly>
                            <input type="hidden" name="status" value="${ta.getStatus()}" readonly>
                            <input type="submit" name="submit" value="Delete" >
                        </form>
                    </td>
                    <td>
                        <form action="updateTask.jsp" method="post">
                            <input type="hidden" name="Tid" value="${ta.getTid()}" >
                            <input type="hidden" name="Tname" value="${ta.getTname()}" >
                            <input type="hidden" name="Description" value="${ta.getDescription()}" >
                            <input type="hidden" name="Assign_To" value="${ta.getAssign_To()}" >
                            <input type="hidden" name="dueDate" value="${ta.getDueDate()}" >
                            <input type="hidden" name="status" value="${ta.getStatus()}" >
                            <input type="submit" name= "submit" value="Update" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <form action="taskInsert">
        
	<a href="taskInsert.jsp">
    <input type="button" name="insertT" value="Create Task" style="background-color: #4CAF50; color: white; padding: 10px 70px;">

</a>
<br>

<br>
    </form>
</body>
</html>
