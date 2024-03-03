<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Account</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #5805ed; /* Set the background color */
            margin: 0;
            padding: 0;
            text-align: center;
        }
        
        h1 {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            width: 300px;
            margin: 0 auto;
            animation: fadeIn 1s; /* Fade in the form */
        }

        table {
            width: 100%;
        }

        table tr td {
            padding: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
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
            animation: fadeIn 1s; /* Add animation to the button */
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        /* New CSS for fadeIn animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>

<script>
    function confirmDelete() {
        if (confirm("Are you sure you want to delete your account? This action cannot be undone.")) {
            document.getElementById("delete").submit();
        } else {
            return false;
        }
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

    <h1>Service Provider Account Delete</h1>

    <form action="delete" method="post">
    <table>
        <tr>
            <td>Service Provider ID</td>
            <td><input type="text" name="spid" value="<%= id %>" readonly></td>
        </tr>
        
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" value="<%= name %>" readonly></td>
        </tr>
        
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" value="<%= email %>" readonly></td>
        </tr>
        <tr>
            <td>Phone number</td>
            <td><input type="text" name="phone" value="<%= phone %>" readonly></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text" name="gender" value="<%= gender %>" readonly></td>
        </tr>
        <tr>
            <td>Position</td>
            <td><input type="text" name="position" value="<%= position %>" readonly></td>
        </tr>
        <tr>
            <td>User name</td>
            <td><input type="text" name="username" value="<%= username %>" readonly></td>
        </tr>
        
    </table>
    <br>
    
    <input type="submit" name="submit" value="Delete My Account" onclick="confirmDelete()">
    
    </form>

</body>
</html>
