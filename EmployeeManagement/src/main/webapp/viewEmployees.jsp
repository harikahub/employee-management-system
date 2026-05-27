<%@page import="java.util.List"%>
<%@page import="model.Employee"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow p-4">

        <div class="d-flex justify-content-between align-items-center mb-4">

            <h2>Employee List</h2>

            <a href="addEmployee.jsp" class="btn btn-primary">
                Add Employee
            </a>

        </div>

        <table class="table table-bordered table-hover text-center">

            <thead class="table-dark">

                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Salary</th>
                    <th>Actions</th>
                </tr>

            </thead>

            <tbody>

<%
List<Employee> list = (List<Employee>) request.getAttribute("employees");

for(Employee emp : list){
%>

                <tr>

                    <td><%= emp.getId() %></td>
                    <td><%= emp.getName() %></td>
                    <td><%= emp.getEmail() %></td>
                    <td><%= emp.getDepartment() %></td>
                    <td><%= emp.getSalary() %></td>

                    <td>

                        <a href="editEmployee?id=<%= emp.getId() %>"
                           class="btn btn-warning btn-sm">
                           Edit
                        </a>

                        <a href="deleteEmployee?id=<%= emp.getId() %>"
                           class="btn btn-danger btn-sm">
                           Delete
                        </a>

                    </td>

                </tr>

<%
}
%>

            </tbody>

        </table>

    </div>

</div>

</body>
</html>