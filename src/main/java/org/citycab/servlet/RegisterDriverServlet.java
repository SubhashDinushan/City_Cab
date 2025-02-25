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


@WebServlet("/registerDriver")
public class RegisterDriverServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String license = request.getParameter("license"); // License Number
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establish database connection
            conn = DBConnection.getConnection();

            // SQL query to insert driver details
            String sql = "INSERT INTO drivers (driver_id, driver_name, driver_nic, driver_licenNo, driver_email, driver_mobileNo) " +
                    "VALUES (UUID(), ?, ?, ?, ?, ?)";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, nic);
            stmt.setString(3, license);
            stmt.setString(4, email);
            stmt.setString(5, mobile);

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
