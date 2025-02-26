package org.citycab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import org.citycab.dao.VehicleDAO;
import org.citycab.model.Vehicle;

import java.io.File;
import java.io.IOException;

@WebServlet("/update-vehicle")
public class UpdateVehicleServlet extends HttpServlet {
    private VehicleDAO vehicleDAO = new VehicleDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve the vehicle ID from the request
            int vehicleId = Integer.parseInt(request.getParameter("vehicleId"));

            // Fetch the vehicle details from the database
            Vehicle vehicle = vehicleDAO.getVehicleById(vehicleId);

            // Set the vehicle as a request attribute
            request.setAttribute("vehicle", vehicle);

            // Forward to the update form page
            request.getRequestDispatcher("/updateVehicleForm.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching vehicle details: " + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve the vehicleId from the request
            String vehicleIdParam = request.getParameter("vehicleId");
            if (vehicleIdParam == null || vehicleIdParam.trim().isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Vehicle ID is missing.");
                return;
            }

            int vehicleId = Integer.parseInt(vehicleIdParam);

            // Retrieve other form data
            String vehicleType = request.getParameter("vehicle-type");
            String priceParam = request.getParameter("price");
            String driverName = request.getParameter("driver-name");

            // Validate input
            if (vehicleType == null || vehicleType.trim().isEmpty() ||
                    priceParam == null || priceParam.trim().isEmpty() ||
                    driverName == null || driverName.trim().isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
                return;
            }

            double price = Double.parseDouble(priceParam);

            // Retrieve driver ID by driver name
            String driverId = vehicleDAO.getDriverIdByName(driverName);
            if (driverId == null) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Driver not found: " + driverName);
                return;
            }

            // Handle file upload (if a new photo is provided)
            Part filePart = request.getPart("vehicle-photo");
            String photoPath = null;
            if (filePart != null && filePart.getSize() > 0) {
                String fileName = filePart.getSubmittedFileName();
                String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();
                String filePath = uploadPath + File.separator + fileName;
                filePart.write(filePath);
                photoPath = "uploads/" + fileName;
            } else {
                // If no new photo is uploaded, retain the existing photo path
                Vehicle existingVehicle = vehicleDAO.getVehicleById(vehicleId);
                photoPath = existingVehicle.getVehiclePhoto();
            }

            // Create a Vehicle object
            Vehicle vehicle = new Vehicle(vehicleId, vehicleType, price, driverId, driverName, photoPath);

            // Update the vehicle in the database
            vehicleDAO.updateVehicle(vehicle);

            // Redirect back to the admin panel
            response.sendRedirect("admin-panel");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid vehicle ID format.");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error updating vehicle: " + e.getMessage());
        }
    }
}