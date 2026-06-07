# Employee Management System

## Project Overview
Employee Management System is a web-based CRUD application developed using Java, JSP, Servlets, JDBC, MySQL, Maven, and Apache Tomcat.

## Features
- Add Employee
- View Employees
- Update Employee Details
- Delete Employee Records
- MySQL Database Integration
- Maven Project Structure

## Technologies Used
- Java
- JSP
- Servlets
- JDBC
- MySQL
- Maven
- Apache Tomcat
- Git & GitHub

## Database
Database Name: employee_db

Table: employee

Columns:
- id 
- name
- email
- department
- salary

SQL:

```sql
CREATE DATABASE employee_db;
```

## Project Structure

src/main/java
- controller
- dao
- model
- util

src/main/webapp
- addEmployee.jsp
- editEmployee.jsp
- viewEmployees.jsp

## Run the Project

1. Clone the repository.
2. Import the project as a Maven Project in Eclipse.
3. Configure MySQL username and password in `DBConnection.java`.
4. Right-click the project and select `Maven → Update Project`.
5. Add the project to Apache Tomcat Server.
6. Start the Tomcat Server.
7. Open the application in browser:

```text
http://localhost:8080/EmployeeManagement/viewEmployees
```

## Author
Harika Akula
