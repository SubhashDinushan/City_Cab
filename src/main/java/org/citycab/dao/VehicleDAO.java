package org.citycab.dao;

import org.citycab.model.Vehicle;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VehicleDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/citycab?useSSL=false&serverTimezone=UTC";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public void addVehicle(Vehicle vehicle) {
        String sql = "INSERT INTO vehicles (vehicle_type, price, driver_name, vehicle_photo) VALUES (?, ?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, vehicle.getVehicleType());
            stmt.setDouble(2, vehicle.getPrice());
            stmt.setString(3, vehicle.getDriverName());
            stmt.setString(4, vehicle.getVehiclePhoto());
            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Vehicle> getAllVehicles() {
        List<Vehicle> vehicles = new ArrayList<>();
        String sql = "SELECT * FROM vehicles";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(
                        rs.getString("vehicle_type"),
                        rs.getDouble("price"),
                        rs.getString("driver_name"),
                        rs.getString("vehicle_photo")
                );
                vehicles.add(vehicle);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return vehicles;
    }
}
