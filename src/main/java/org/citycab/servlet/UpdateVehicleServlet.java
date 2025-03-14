package org.citycab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.citycab.dao.VehicleDAO;
import org.citycab.model.Vehicle;


import java.io.IOException;

@WebServlet("/updateVehicle")
public class UpdateVehicleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("UpdateVehicleServlet called");
        int vehicleId = Integer.parseInt(request.getParameter("vehicleId"));
        System.out.println("Updating vehicle with ID: " + vehicleId);

        String vehicleType = request.getParameter("vehicle-type");
        double price = Double.parseDouble(request.getParameter("price"));
        String driverName = request.getParameter("driver-name");
        String vehiclePhoto = request.getParameter("vehicle-photo");

        VehicleDAO vehicleDAO = new VehicleDAO();
        Vehicle vehicle = new Vehicle(vehicleId, vehicleType, price, 0, driverName, vehiclePhoto);

        if (vehicleDAO.updateVehicle(vehicle)) {
            response.sendRedirect("admin-panel"); // Redirect back to the admin panel
        } else {
            response.getWriter().println("Failed to update vehicle.");
        }
    }
}