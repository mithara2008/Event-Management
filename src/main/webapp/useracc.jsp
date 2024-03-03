<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: radial-gradient(circle, #5805ed, #2980b9);
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }

        h1 {
            margin: 20px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.6);
            padding: 10px;
            color: #000;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            border-right: 1px solid #ddd; /* Add vertical line here */
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        td {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            color: #007bff;
            margin: 10px;
        }

        input[type="button"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #0056b3;
        }

        .logout-button {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #ff3333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .logout-button:hover {
            background-color: #ff0000;
        }
    </style>
</head>

<body>

<div class="background-image">
    <h1>Dashboard</h1>

    <table>
        <thead>
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
        </thead>
        <c:forEach var="sp" items="${spDetails}">
            <c:set var="id" value="${sp.id}" />
            <c:set var="name" value="${sp.name}" />
            <c:set var="email" value="${sp.email}" />
            <c:set var="phone" value="${sp.phone}" />
            <c:set var="gender" value="${sp.gender}" />
            <c:set var="position" value="${sp.position}" />
            <c:set var="username" value="${sp.username}" />
            <c:set var="password" value="${sp.password}" />

            <tr>
                <td>Service Provider ID</td>
                <td>${sp.id}</td>
            </tr>
            <tr>
                <td>Service Provider Name</td>
                <td>${sp.name}</td>
            </tr>
            <tr>
                <td>Service Provider Email</td>
                <td>${sp.email}</td>
            </tr>
            <tr>
                <td>Service Provider Phone</td>
                <td>${sp.phone}</td>
            </tr>
            <tr>
                <td>Service Provider Gender</td>
                <td>${sp.gender}</td>
            </tr>
            <tr>
                <td>Service Provider Position</td>
                <td>${sp.position}</td>
            </tr>
            <tr>
                <td>Service Provider User Name</td>
                <td>${sp.username}</td>
            </tr>
            <tr>
                <td>Service Provider Password</td>
                <td>${sp.password}</td>
            </tr>
        </c:forEach>
    </table>

     <c:url value="UpdateServiceProvider.jsp" var="spupdate">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="gender" value="${gender}" />
        <c:param name="position" value="${position}" />
        <c:param name="username" value="${username}" />
        <c:param name="password" value="${password}" />
    </c:url>

    <a href="${spupdate}">
        <input type="button" name="update" value="Update My Data" style="background-color: #4CAF50; color: white;">
    </a>

    <c:url value="deleteServiceProvider.jsp" var="spdelete">
        <c:param name="id" value="${id}" />
        <c:param name="name" value="${name}" />
        <c:param name="email" value="${email}" />
        <c:param name="phone" value="${phone}" />
        <c:param name="gender" value="${gender}" />
        <c:param name="position" value="${position}" />
        <c:param name="username" value="${username}" />
        <c:param name="password" value="${password}" />
    </c:url>

    <a href="${spdelete}">
        <input type="button" name="delete" value="Delete My Account" style="background-color: #ff3333; color: white;">
    </a>

    <a href="taskInsert.jsp">
        <input type="button" name="insertT" value="Create Task" style="background-color: #007bff; color: white;">
    </a>
    <a href="viewTask.jsp">
        <input type="button" name="view" value="View Task" style="background-color: #007bff; color: white;">
    </a>

    <form action="logout" method="post">
        <button class="logout-button" type="submit">Logout</button>
    </form>
</div>
</body>
</html>
