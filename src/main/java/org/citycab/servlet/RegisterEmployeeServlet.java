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
import java.sql.SQLException;

@WebServlet("/registerEmployee") // FIXED: Added '/'
public class RegisterEmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // Ensure UTF-8 encoding
        response.setContentType("text/html;charset=UTF-8");

        // Retrieve form data
        String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String pwd = request.getParameter("pwd");

        // Validate form input (optional)
        if (name == null || nic == null || email == null || mobile == null ||
                name.isEmpty() || nic.isEmpty() || email.isEmpty() || mobile.isEmpty()) {
            response.sendRedirect("error.html");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establish database connection
            conn = DBConnection.getConnection();

            // Correct SQL query (Without emp_id if it's auto-generated)
            String sql = "INSERT INTO employee (emp_name, emp_nic, emp_email, emp_mobileNo,password) VALUES (?, ?, ?, ?, ?)";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, nic);
            stmt.setString(3, email);
            stmt.setString(4, mobile);
            stmt.setString(5, pwd);

            // Execute update
            int rowsInserted = stmt.executeUpdate();

            if (rowsInserted > 0) {
                response.sendRedirect("success.html"); // Redirect to success page
            } else {
                response.sendRedirect("error.html"); // Redirect to error page
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.html"); // Redirect in case of failure
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}