package org.citycab.dao;

import org.citycab.model.Vehicle;
import org.citycab.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class VehicleDao {

    public boolean addVehicle(Vehicle vehicle) {
        String sql = "INSERT INTO vehicles (vehicle_type, vehicle_price, vehicle_name, vehicle_photo) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, vehicle.getVehicleType());
            pstmt.setDouble(2, vehicle.getPrice());
            pstmt.setString(3, vehicle.getDriverName());
            pstmt.setString(4, vehicle.getVehiclePhoto());

            int rowsInserted = pstmt.executeUpdate();
            return rowsInserted > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}