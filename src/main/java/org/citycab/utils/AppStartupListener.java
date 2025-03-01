package org.citycab.utils;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import org.citycab.dao.VehicleDAO;
import org.citycab.model.Vehicle;

import java.util.List;

@WebListener
public class AppStartupListener implements ServletContextListener {

    private VehicleDAO vehicleDAO = new VehicleDAO();

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        try {
            List<Vehicle> vehicleList = vehicleDAO.getAllVehicles();
            sce.getServletContext().setAttribute("vehicles", vehicleList);
            System.out.println("Vehicles preloaded successfully.");
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Error loading vehicles on startup: " + e.getMessage());
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Application shutting down.");
    }
}