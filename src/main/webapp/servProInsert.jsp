<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Create an account</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
        }

        form {
            background-color: #fff;
            margin: 20px auto;
            padding: 20px;
            width: 300px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s; /* Add fadeIn animation to the form */
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin: 5px;
        }

        input[type="submit"] {
            background-color: #2a9d8f;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            animation: pulse 2s infinite; /* Add a pulse animation to the submit button */
        }

        input[type="submit"]:hover {
            background-color: #1f7a70;
        }

        /* Custom styles for the icons */
        .fa {
            margin-right: 5px;
        }

        /* New CSS for fadeIn and pulse animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }
    </style>
</head>
<body>
    <h1>Create New Service Provider Account</h1>
    <form action="insert" method="post">
        <i class="fa fa-user"></i> Name <input type="text" name="name" required><br>
        <i class="fa fa-envelope"></i> Email <input type="text" name="email" required><br>
        <i class="fa fa-phone"></i> Phone Number <input type="text" name="phone" required><br>
        <i class="fa fa-venus-mars"></i> Gender: <input type="radio" name="gender" value="male"> Male
        <input type="radio" name="gender" value="female"> Female<br>
        <i class="fa fa-briefcase"></i> Position <input type="text" name="position"><br>
        <i class="fa fa-user"></i> User Name <input type="text" name="username" required><br>
        <i class="fa fa-lock"></i> Password <input type="password" name="pwd" required><br>

        <input type="submit" name="submit" value="Create Service Provider">
    </form>
</body>
</html>
