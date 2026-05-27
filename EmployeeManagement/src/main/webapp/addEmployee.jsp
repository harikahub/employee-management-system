<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow p-4">

        <h2 class="text-center mb-4">Add Employee</h2>

        <form action="addEmployee" method="post">

            <div class="mb-3">
                <label>Name</label>
                <input type="text" name="name" class="form-control">
            </div>

            <div class="mb-3">
                <label>Email</label>
                <input type="email" name="email" class="form-control">
            </div>

            <div class="mb-3">
                <label>Department</label>
                <input type="text" name="department" class="form-control">
            </div>

            <div class="mb-3">
                <label>Salary</label>
                <input type="text" name="salary" class="form-control">
            </div>

            <button type="submit" class="btn btn-primary w-100">
                Add Employee
            </button>

        </form>

        <br>

        <a href="viewEmployees" class="btn btn-success">
            View Employees
        </a>

    </div>

</div>

</body>
</html>