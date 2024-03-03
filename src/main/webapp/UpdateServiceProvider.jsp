<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Update Service Provider</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #5805ed; /* Change the background color */
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            background-color: #2a9d8f;
            color: #fff;
            padding: 10px;
            margin: 0;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 50%;
            margin: 0 auto;
        }

        table {
            width: 100%;
        }

        table tr td {
            padding: 10px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="text"]:read-only {
            background-color: #eee;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        /* Additional styling for form elements */
        label {
            font-weight: bold;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            form {
                width: 90%;
            }
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
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String gender = request.getParameter("gender");
    String position = request.getParameter("position");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
%>

<h1>Update Account</h1>

<form action="update" method="post">
    <table>
        <tr>
            <td>Service Provider ID</td>
            <td><input type="text" name="spid" value="<%= id %>" readonly></td>
        </tr>

        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<%= name %>"></td>
        </tr>

        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= email %>"></td>
        </tr>
        <tr>
            <td>Phone number</td>
            <td><input type="text" name="phone" value="<%= phone %>"></td>
        </tr>
        <tr>
            <td>Gender </td>
            <td>
                <label class="gender-label">Male <input type="radio" name="gender" value="male"></label>
                <label class="gender-label">Female <input type="radio" name="gender" value="female"></label>
            </td>
        </tr>
        <tr>
            <td>Position</td>
            <td><input type="text" name="position" value="<%= position %>"></td>
        </tr>
        <tr>
            <td>User name</td>
            <td><input type="text" name="username" value="<%= username %>"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password" value="<%= password %>"></td>
        </tr>
    </table>
    <br>

    <input type="submit" name="submit" value="Update My Data" onclick="showUpdateConfirmation()">

</form>
</body>
</html>
