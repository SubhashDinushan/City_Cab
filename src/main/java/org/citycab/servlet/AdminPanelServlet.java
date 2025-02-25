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
        List<Vehicle> vehicleList = vehicleDAO.getAllVehicles();
        request.setAttribute("vehicles", vehicleList);
        request.getRequestDispatcher("/adminPanel.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String vehicleType = request.getParameter("vehicle-type");
        String priceParam = request.getParameter("price");
        String driverName = request.getParameter("driver-name");

        // Debugging output
        System.out.println("Vehicle Type: " + vehicleType);
        System.out.println("Price Parameter: " + priceParam);
        System.out.println("Driver Name: " + driverName);

        // Check for null values
        if (priceParam == null || priceParam.trim().isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Price cannot be empty");
            return;
        }

        double price = Double.parseDouble(priceParam);

        // Handle File Upload
        Part filePart = request.getPart("vehicle-photo");
        String fileName = filePart.getSubmittedFileName();
        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // Save file path in the database (relative to project)
        String photoPath = UPLOAD_DIR + "/" + fileName;

        Vehicle newVehicle = new Vehicle(vehicleType, price, driverName, photoPath);
        vehicleDAO.addVehicle(newVehicle);

        response.sendRedirect("admin-panel");
    }
}
