<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Task</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f7f7f7; /* Light background color */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        width: 80%;
        max-width: 400px;
        text-align: center;
    }

    table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
    }

    table, td, th {
        border: 1px solid #ddd;
        padding: 10px;
    }

    th {
        background-color: #007bff;
        color: #fff;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
 
</style>

<script>
    function showUpdateConfirmation() {
        alert("Your data has been successfully updated.");
    }
</script> 
</head>
<body>

	<%
    String Tid = request.getParameter("Tid");
    String Tname = request.getParameter("Tname");
    String Description = request.getParameter("Description");
    String Assign_To = request.getParameter("Assign_To");
    String dueDate = request.getParameter("dueDate");
    String status = request.getParameter("status");
%>

	
	<h1>Update Task Assignment</h1>
    <form action="updateTask" method="post">
        <table>
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>Task Assignment ID</td>
                <td><input type="text" name="taid" value="<%= Tid %>" readonly></td>
            </tr>
            <tr>
                <td>Task Name</td>
                <td><input type="text" name="Tname" value="<%= Tname %>"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" name="Description" value="<%= Description %>"></td>
            </tr>
            <tr>
                <td>Assign_To</td>
                <td><input type="text" name="Assign_To" value="<%= Assign_To %>"></td>
            </tr>
            <tr>
                <td>Due Date</td>
                <td><input type="text" name="dueDate" value="<%= dueDate %>"></td>
            </tr>
            <tr>
                <td>Status</td>
                <td><input type="text" name="status" value="<%= status %>"></td>
            </tr>
        </table>
        <br>
        <input type="submit" name="submit" value="Update Tasks" onclick = "showUpdateConfirmation()">
    </form>
</body>
</html>
