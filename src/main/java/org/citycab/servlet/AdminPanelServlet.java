

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

    private final VehicleDAO vehicleDAO = new VehicleDAO();
    private static final String UPLOAD_DIR = "uploads";

    @Override
    public void init() throws ServletException {
        super.init();
        loadVehicles();
    }

    private void loadVehicles() {
        try {
            List<Vehicle> vehicleList = vehicleDAO.getAllVehicles();
            getServletContext().setAttribute("vehicles", vehicleList);
            System.out.println("Vehicles loaded successfully.");
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error loading vehicles on startup.", e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        loadVehicles();
        request.setAttribute("vehicles", getServletContext().getAttribute("vehicles"));
        request.getRequestDispatcher("/adminPanel.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String vehicleType = request.getParameter("vehicle-type");
            String priceParam = request.getParameter("price");
            String driverName = request.getParameter("driver-name");

            if (vehicleType == null || priceParam == null || driverName == null ||
                    vehicleType.trim().isEmpty() || priceParam.trim().isEmpty() || driverName.trim().isEmpty()) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
                return;
            }

            double price = Double.parseDouble(priceParam);
            Part filePart = request.getPart("vehicle-photo");
            String fileName = filePart.getSubmittedFileName();
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;

            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir();

            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);
            String photoPath = UPLOAD_DIR + "/" + fileName;

            String driverId = vehicleDAO.getDriverIdByName(driverName);
            if (driverId == null) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Driver not found: " + driverName);
                return;
            }

            Vehicle newVehicle = new Vehicle(vehicleType, price, driverId, driverName, photoPath);
            boolean isAdded = vehicleDAO.addVehicle(newVehicle);

            if (isAdded) {
                loadVehicles(); // Refresh vehicle list
                response.sendRedirect("admin-panel");
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Vehicle addition failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error processing request.");
        }
    }
}
