package org.citycab.dao;

import org.citycab.model.Customer;
import org.citycab.utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDao {

    public boolean addCustomer(Customer customer) {
        String sql = "INSERT INTO customer (cus_name, cus_address, cus_email, cus_mobileNo) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, customer.getName());
            stmt.setString(2, customer.getAddress());
            stmt.setString(3, customer.getEmail());
            stmt.setString(4, customer.getMobileNo());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error adding customer to the database", e);
        }
    }

    public int getCustomerId(String customer) {
        String sql = "SELECT cus_id from customer where cus_name = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, customer);

            ResultSet rs = stmt.executeQuery();

            if(rs.next()){
                return rs.getInt("cus_id");
            }else{
                return -1;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error adding customer to the database", e);
        }
    }




}
