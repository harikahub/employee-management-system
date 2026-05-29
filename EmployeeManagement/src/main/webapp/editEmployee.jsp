<%@page import="model.Employee"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
</head>

<body>

<h2>Edit Employee</h2>

<%
Employee emp = (Employee) request.getAttribute("emp");
%>

<form action="updateEmployee" method="post">

    <input type="hidden" name="id" value="<%= emp.getId() %>">

    Name:
    <input type="text" name="name" value="<%= emp.getName() %>">
    <br><br>

    Email:
    <input type="email" name="email" value="<%= emp.getEmail() %>">
    <br><br>

    Department:
    <input type="text" name="department" value="<%= emp.getDepartment() %>">
    <br><br>

    Salary:
    <input type="text" name="salary" value="<%= emp.getSalary() %>">
    <br><br>

    <input type="submit" value="Update Employee">

</form>

</body>
</html>