package org.citycab.dao;

import org.citycab.model.Booking;
import org.citycab.utils.DBConnection;

import java.sql.*;

public class BookingDao {

    public int addBooking(Booking booking) {
        String sql = "INSERT INTO booking (b_customer_id, b_vehicle_id, b_driver_id, price,passenger_count,fromm,too,departure_date,return_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?,?)";


        try (Connection conn = DBConnection.getConnection();

             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {// ✅ Specify RETURN_GENERATED_KEYS

            stmt.setInt(1, booking.getCustomerId());
            stmt.setInt(2, booking.getVehicleId());
            stmt.setInt(3, booking.getDriverId());
            stmt.setString(4, booking.getPrice());
            stmt.setString(5, booking.getPassengerCount());
            stmt.setString(6, booking.getFrom());
            stmt.setString(7, booking.getTo());
            stmt.setDate(8, booking.getDepatureDate());
            stmt.setDate(9, booking.getReturnDate());

            int rowsAffected = stmt.executeUpdate();
            if (rowsAffected > 0) {
                try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                    if (generatedKeys.next()) {
                        // Return the generated 'booking_id' (assuming the column name is 'booking_id')
                        return generatedKeys.getInt(1); // This is the auto-generated ID
                    }
                }
            }
            return -1; // Return -1 if no ID was generated

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error adding customer to the database", e);
        }
    }




}
