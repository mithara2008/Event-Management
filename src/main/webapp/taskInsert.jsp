<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Create Task</title>
    <!-- Add Bootstrap CSS link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #5805ed;
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
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 80%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-top: 10px;
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
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <form action="insertT" method="post" onsubmit="return validateForm()">
        <h2>Create Task</h2>
        <div class="form-group">
            <label for="Tname">Task Name:</label>
            <input type="text" class="form-control" id="Tname" name="Tname">
        </div>

        <div class="form-group">
            <label for="Description">Description:</label>
            <input type="text" class="form-control" id="Description" name="Description">
        </div>

        <div class="form-group">
            <label for="Assign_To">Assign To:</label>
            <input type="text" class="form-control" id="Assign_To" name="Assign_To">
        </div>

        <div class="form-group">
            <label for="dueDate">Due Date:</label>
            <input type="text" class="form-control" id="dueDate" name="dueDate">
        </div>

        <div class="form-group">
            <label for="status">Status:</label>
            <input type="text" class="form-control" id="status" name="status">
        </div>

        <div class="form-group">
            <button type="submit" name="submit" class="btn btn-primary">Create Task</button>
            <a href="viewTask.jsp" class="btn btn-success">View Task</a>
        </div>
    </form>

    <!-- Add Bootstrap JS and jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

    <script>
        function validateForm() {
            var Tname = document.getElementById("Tname").value;
            var Description = document.getElementById("Description").value;
            var Assign_To = document.getElementById("Assign_To").value;
            var dueDate = document.getElementById("dueDate").value;
            var status = document.getElementById("status").value;

            if (Tname.trim() === '' || Description.trim() === '' || Assign_To.trim() === '' || dueDate.trim() === '' || status.trim() === '') {
                alert("All fields are required.");
                return false;
            }
        }
    </script>
</body>
</html>
