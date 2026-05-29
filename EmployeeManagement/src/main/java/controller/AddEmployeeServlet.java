package controller;

import java.io.IOException;

import dao.EmployeeDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Employee;

@WebServlet("/addEmployee")
public class AddEmployeeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String department = request.getParameter("department");
        double salary = Double.parseDouble(request.getParameter("salary"));

        Employee emp = new Employee();

        emp.setName(name);
        emp.setEmail(email);
        emp.setDepartment(department);
        emp.setSalary(salary);

        EmployeeDAO dao = new EmployeeDAO();

        int status = dao.addEmployee(emp);

        if (status > 0) {
            response.sendRedirect("viewEmployees");
        } else {
            response.getWriter().println("Something went wrong");
        }
    }
}