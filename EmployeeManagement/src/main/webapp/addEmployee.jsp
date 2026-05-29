<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
</head>

<body>

<h2>Add Employee</h2>

<form action="addEmployee" method="post">

    Name:
    <input type="text" name="name">
    <br><br>

    Email:
    <input type="email" name="email">
    <br><br>

    Department:
    <input type="text" name="department">
    <br><br>

    Salary:
    <input type="text" name="salary">
    <br><br>

    <input type="submit" value="Add Employee">

</form>

<br>

<a href="viewEmployees">View Employees</a>

</body>
</html>