package org.citycab.model;

public class Vehicle {
    private int vehicleId; // New field for vehicle ID
    private String vehicleType;
    private double price;
    private String driverId; // References driver_id from the drivers table
    private String driverName; // Temporary field to store driver name
    private String vehiclePhoto;

    // Constructor without vehicleId (for adding new vehicles)
    public Vehicle(String vehicleType, double price, String driverId, String driverName, String vehiclePhoto) {
        this.vehicleType = vehicleType;
        this.price = price;
        this.driverId = driverId;
        this.driverName = driverName;
        this.vehiclePhoto = vehiclePhoto;
    }

    // Constructor with vehicleId (for updating existing vehicles)
    public Vehicle(int vehicleId, String vehicleType, double price, String driverId, String driverName, String vehiclePhoto) {
        this.vehicleId = vehicleId;
        this.vehicleType = vehicleType;
        this.price = price;
        this.driverId = driverId;
        this.driverName = driverName;
        this.vehiclePhoto = vehiclePhoto;
    }


    // Getters and Setters
    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDriverId() {
        return driverId;
    }

    public void setDriverId(String driverId) {
        this.driverId = driverId;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public String getVehiclePhoto() {
        return vehiclePhoto;
    }

    public void setVehiclePhoto(String vehiclePhoto) {
        this.vehiclePhoto = vehiclePhoto;
    }

    @Override
    public String toString() {
        return "Vehicle{" +
                "vehicleId=" + vehicleId +
                ", vehicleType='" + vehicleType + '\'' +
                ", price=" + price +
                ", driverId='" + driverId + '\'' +
                ", driverName='" + driverName + '\'' +
                ", vehiclePhoto='" + vehiclePhoto + '\'' +
                '}';
    }
}