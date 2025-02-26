package org.citycab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.citycab.dao.VehicleDAO;

import java.io.IOException;

@WebServlet("/delete-vehicle")
public class DeleteVehicleServlet extends HttpServlet {
    private VehicleDAO vehicleDAO = new VehicleDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve the vehicle ID from the request
            int vehicleId = Integer.parseInt(request.getParameter("vehicleId"));

            // Delete the vehicle from the database
            vehicleDAO.deleteVehicle(vehicleId);

            // Redirect back to the admin panel
            response.sendRedirect("admin-panel");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error deleting vehicle: " + e.getMessage());
        }
    }
}