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

        // Database connection and insertion
        try (Connection conn = DBConnection.getConnection()) {
            // Insert new employee/admin
            String sql = "INSERT INTO employee (emp_name, emp_nic, emp_email, emp_mobileNo, password, user_type) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, empName);
                pstmt.setString(2, empNic);
                pstmt.setString(3, empEmail);
                pstmt.setString(4, empMobile);
                pstmt.setString(5, empPassword);
                pstmt.setString(6, userType);

                // Execute the query
                int rowsInserted = pstmt.executeUpdate();
                if (rowsInserted > 0) {
                    // Fetch all admins and employees after successful registration
                    List<String[]> admins = fetchUsersByType(conn, "admin");
                    List<String[]> employees = fetchUsersByType(conn, "employee");

                    // Set data as request attributes
                    request.setAttribute("admins", admins);
                    request.setAttribute("employees", employees);

                    // Forward to success.jsp
                    request.getRequestDispatcher("success.jsp").forward(request, response);
                } else {
                    response.sendRedirect("error.jsp");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }

    // Helper method to fetch users by type (admin or employee)
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