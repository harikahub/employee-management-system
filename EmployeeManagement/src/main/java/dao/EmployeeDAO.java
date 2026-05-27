package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Employee;
import util.DBConnection;

public class EmployeeDAO {

    Connection con = null;

    // Add Employee
    public int addEmployee(Employee emp) {

        int status = 0;

        try {

            con = DBConnection.getConnection();

            String query = "insert into employee(name,email,department,salary) values(?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, emp.getName());
            ps.setString(2, emp.getEmail());
            ps.setString(3, emp.getDepartment());
            ps.setDouble(4, emp.getSalary());

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // View Employees
    public List<Employee> getAllEmployees() {

        List<Employee> list = new ArrayList<>();

        try {

            con = DBConnection.getConnection();

            String query = "select * from employee";

            PreparedStatement ps = con.prepareStatement(query);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Employee emp = new Employee();

                emp.setId(rs.getInt("id"));
                emp.setName(rs.getString("name"));
                emp.setEmail(rs.getString("email"));
                emp.setDepartment(rs.getString("department"));
                emp.setSalary(rs.getDouble("salary"));

                list.add(emp);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    // Delete Employee
    public int deleteEmployee(int id) {

        int status = 0;

        try {

            con = DBConnection.getConnection();

            String query = "delete from employee where id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, id);

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    // Get Employee By ID
    public Employee getEmployeeById(int id) {

        Employee emp = new Employee();

        try {

            con = DBConnection.getConnection();

            String query = "select * from employee where id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                emp.setId(rs.getInt("id"));
                emp.setName(rs.getString("name"));
                emp.setEmail(rs.getString("email"));
                emp.setDepartment(rs.getString("department"));
                emp.setSalary(rs.getDouble("salary"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return emp;
    }

    // Update Employee
    public int updateEmployee(Employee emp) {

        int status = 0;

        try {

            con = DBConnection.getConnection();

            String query = "update employee set name=?, email=?, department=?, salary=? where id=?";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, emp.getName());
            ps.setString(2, emp.getEmail());
            ps.setString(3, emp.getDepartment());
            ps.setDouble(4, emp.getSalary());
            ps.setInt(5, emp.getId());

            status = ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
}