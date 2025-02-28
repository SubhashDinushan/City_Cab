package org.citycab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.citycab.utils.DBConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/registerEmployee")
public class RegisterEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String empName = request.getParameter("name");
        String empNic = request.getParameter("nic");
        String empEmail = request.getParameter("email");
        String empMobile = request.getParameter("mobile");
        String empPassword = request.getParameter("pwd");
        String userType = request.getParameter("role");

        try (Connection conn = DBConnection.getConnection()) {
            // Check if email already exists
            if (isEmailExists(conn, empEmail)) {
                request.setAttribute("errorMessage", "Email already registered. Please use a different email.");
                request.getRequestDispatcher("RegisterEmployee.jsp").forward(request, response);
                return;
            }

            // Insert new employee/admin
            String sql = "INSERT INTO employee (emp_name, emp_nic, emp_email, emp_mobileNo, password, user_type) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, empName);
                pstmt.setString(2, empNic);
                pstmt.setString(3, empEmail);
                pstmt.setString(4, empMobile);
                pstmt.setString(5, empPassword);
                pstmt.setString(6, userType);

                int rowsInserted = pstmt.executeUpdate();
                if (rowsInserted > 0) {
                    List<String[]> admins = fetchUsersByType(conn, "admin");
                    List<String[]> employees = fetchUsersByType(conn, "employee");

                    request.setAttribute("admins", admins);
                    request.setAttribute("employees", employees);
                    request.getRequestDispatcher("success.jsp").forward(request, response);
                } else {
                    response.sendRedirect("error.jsp");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error occurred. Please try again.");
            request.getRequestDispatcher("RegisterEmployee.jsp").forward(request, response);
        }
    }

    // Helper method to check if email already exists
    private boolean isEmailExists(Connection conn, String email) throws SQLException {
        String sql = "SELECT emp_id FROM employee WHERE emp_email = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, email);
            try (ResultSet rs = pstmt.executeQuery()) {
                return rs.next();
            }
        }
    }

    // Helper method to fetch users by type
    private List<String[]> fetchUsersByType(Connection conn, String userType) throws SQLException {
        List<String[]> users = new ArrayList<>();
        String sql = "SELECT emp_id, emp_name, emp_nic, emp_email, emp_mobileNo FROM employee WHERE user_type = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, userType);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    String[] user = new String[5];
                    user[0] = rs.getString("emp_id");
                    user[1] = rs.getString("emp_name");
                    user[2] = rs.getString("emp_nic");
                    user[3] = rs.getString("emp_email");
                    user[4] = rs.getString("emp_mobileNo");
                    users.add(user);
                }
            }
        }
        return users;
    }
}