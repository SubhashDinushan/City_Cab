package org.citycab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.citycab.dao.VehicleDAO;


import java.io.IOException;

@WebServlet("/deleteVehicle")
public class DeleteVehicleServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int vehicleId = Integer.parseInt(request.getParameter("id"));
        VehicleDAO vehicleDAO = new VehicleDAO();

        if (vehicleDAO.deleteVehicle(vehicleId)) {
            response.sendRedirect("admin-panel"); // Redirect back to the admin panel
        } else {
            response.getWriter().println("Failed to delete vehicle.");
        }
    }
}