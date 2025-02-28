package org.citycab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import org.citycab.dao.VehicleDAO;
import org.citycab.model.Vehicle;

import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin-panel")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class AdminPanelServlet extends HttpServlet {

    private VehicleDAO vehicleDAO = new VehicleDAO();
    private static final String UPLOAD_DIR = "uploads";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetch all vehicles from the database
            List<Vehicle> vehicleList = vehicleDAO.getAllVehicles();
            request.setAttribute("vehicles", vehicleList);

            // Forward to the adminPanel.jsp page
            request.getRequestDispatcher("/adminPanel.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error retrieving vehicles: " + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Retrieve form data
            String vehicleType = request.getParameter("vehicle-type");
            String priceParam = request.getParameter("price");
            String driverName = request.getParameter("driver-name");

            // Debugging output
            System.out.println("Vehicle Type: " + vehicleType);
            System.out.println("Price Parameter: " + priceParam);
            System.out.println("Driver Name: " + driverName);

            // Validate input
            if (vehicleType == null || vehicleType.trim().isEmpty() ||
                    priceParam == null || priceParam.trim().isEmpty() ||
                    driverName == null || driverName.trim().isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
                return;
            }

            double price = Double.parseDouble(priceParam);

            // Handle file upload
            Part filePart = request.getPart("vehicle-photo");
            String fileName = filePart.getSubmittedFileName();
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;

            // Debugging output
            System.out.println("File Name: " + fileName);
            System.out.println("Upload Path: " + uploadPath);

            // Create the upload directory if it doesn't exist
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            // Save the file to the upload directory
            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);

            // Debugging output
            System.out.println("File Saved At: " + filePath);

            // Save the file path in the database (relative to the project)
            String photoPath = UPLOAD_DIR + "/" + fileName;

            // Retrieve driver_id by driver name
            String driverId = vehicleDAO.getDriverIdByName(driverName);
            if (driverId == null) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Driver not found: " + driverName);
                return;
            }

            // Debugging output
            System.out.println("Driver ID: " + driverId);

            // Create a new Vehicle object and add it to the database
            Vehicle newVehicle = new Vehicle(vehicleType, price, driverId, driverName, photoPath);
            boolean isAdded = vehicleDAO.addVehicle(newVehicle);

            // Debugging output
            if (isAdded) {
                System.out.println("Vehicle added successfully!");
            } else {
                System.out.println("Failed to add vehicle.");
            }

            // Redirect to the admin panel page
            response.sendRedirect("admin-panel");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error processing request: " + e.getMessage());
        }
    }
}