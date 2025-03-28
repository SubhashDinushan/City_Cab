package org.citycab.dao;

import org.citycab.model.Vehicle;
import org.citycab.utils.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VehicleDAO {

    // Add a new vehicle to the database
    public boolean addVehicle(Vehicle vehicle) {
        String sql = "INSERT INTO vehicle (vehicle_type, vehicle_price, driver_id, vehicle_photo) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, vehicle.getVehicleType());
            stmt.setDouble(2, vehicle.getPrice());
            stmt.setInt(3, vehicle.getDriverId());
            stmt.setString(4, vehicle.getVehiclePhoto());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error adding vehicle to the database", e);
        }
    }

    // Retrieve all vehicles from the database
    public List<Vehicle> getAllVehicles() {
        List<Vehicle> vehicles = new ArrayList<>();
        String sql = "SELECT v.vehicle_id, v.vehicle_type, v.vehicle_price, v.vehicle_photo, d.driver_name " +
                "FROM vehicle v " +
                "JOIN driver d ON v.driver_id = d.driver_id";

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Vehicle vehicle = new Vehicle(
                        rs.getInt("vehicle_id"),
                        rs.getString("vehicle_type"),
                        rs.getDouble("vehicle_price"),
                        0, // driverId is not needed here
                        rs.getString("driver_name"),
                        rs.getString("vehicle_photo")
                );
                vehicles.add(vehicle);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error retrieving vehicles from the database", e);
        }
        return vehicles;
    }

    // Retrieve a vehicle by its ID
    public Vehicle getVehicleById(int vehicleId) {
        String sql = "SELECT v.vehicle_type, v.vehicle_price, v.vehicle_photo, d.driver_name " +
                "FROM vehicle v " +
                "JOIN driver d ON v.driver_id = d.driver_id " +
                "WHERE v.vehicle_id = ?";
        Vehicle vehicle = null;

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, vehicleId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                vehicle = new Vehicle(
                        vehicleId,
                        rs.getString("vehicle_type"),
                        rs.getDouble("vehicle_price"),
                        0, // driverId is not needed here
                        rs.getString("driver_name"),
                        rs.getString("vehicle_photo")
                );
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error retrieving vehicle by ID", e);
        }
        return vehicle;
    }

    public int getVehicleId(String vehicleType) {
        String sql = "SELECT vehicle_id from vehicle where vehicle_type = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, vehicleType);

            ResultSet rs = stmt.executeQuery();

            if(rs.next()){
                return rs.getInt("vehicle_id");
            }else{
                return -1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error getting vehicle id from from the database", e);
        }
    }


    // Add a new driver to the drivers table
    public boolean addDriver(String driverName, String driverNic, String driverLicenseNo, String driverEmail, String driverMobileNo) {
        String sql = "INSERT INTO driver (driver_name, driver_nic, driver_licenNo, driver_email, driver_mobileNo) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, driverName);
            stmt.setString(2, driverNic);
            stmt.setString(3, driverLicenseNo);
            stmt.setString(4, driverEmail);
            stmt.setString(5, driverMobileNo);

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0; // Return true if the driver was added successfully

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error adding driver to the database", e);
        }
    }

    // Retrieve driver_id by driver name
    public int getDriverIdByName(String driverName) {
        String sql = "SELECT driver_id FROM driver WHERE driver_name = ?";
        int driverId = 0;

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, driverName);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                driverId = rs.getInt("driver_id");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error retrieving driver ID by name", e);
        }
        return driverId;
    }

    // Retrieve driver name by driver ID
    public String getDriverNameById(int driverId) {
        String sql = "SELECT driver_name FROM driver WHERE driver_id = ?";
        String driverName = null;

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, driverId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                driverName = rs.getString("driver_name");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error retrieving driver name by ID", e);
        }
        return driverName;
    }

    // Delete a vehicle by vehicle ID
    public boolean deleteVehicle(int vehicleId) {
        String sql = "DELETE FROM vehicle WHERE vehicle_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, vehicleId);
            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error deleting vehicle from the database", e);
        }
    }

    // Update a vehicle's details
    public boolean updateVehicle(Vehicle vehicle) {
        String sql = "UPDATE vehicle SET vehicle_type = ?, vehicle_price = ?, driver_id = ?, vehicle_photo = ? WHERE vehicle_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, vehicle.getVehicleType());
            stmt.setDouble(2, vehicle.getPrice());
            stmt.setInt(3, vehicle.getDriverId());
            stmt.setString(4, vehicle.getVehiclePhoto());
            stmt.setInt(5, vehicle.getVehicleId());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error updating vehicle in the database", e);
        }
    }
}
