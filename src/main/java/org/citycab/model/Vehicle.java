package org.citycab.model;

public class Vehicle {
    private String vehicleId; // Unique identifier for the vehicle
    private String vehicleType; // Type of the vehicle (e.g., Sedan, SUV)
    private double price; // Price of the vehicle
    private String driverName; // Name of the driver assigned to the vehicle
    private String vehiclePhoto; // Path to the vehicle's photo

    // Default constructor
    public Vehicle() {
    }

    // Parameterized constructor
    public Vehicle(String vehicleId, String vehicleType, double price, String driverName, String vehiclePhoto) {
        this.vehicleId = vehicleId;
        this.vehicleType = vehicleType;
        this.price = price;
        this.driverName = driverName;
        this.vehiclePhoto = vehiclePhoto;
    }

    // Getters and Setters

    public String getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(String vehicleId) {
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

    // toString method for debugging and logging
    @Override
    public String toString() {
        return "Vehicle{" +
                "vehicleId='" + vehicleId + '\'' +
                ", vehicleType='" + vehicleType + '\'' +
                ", price=" + price +
                ", driverName='" + driverName + '\'' +
                ", vehiclePhoto='" + vehiclePhoto + '\'' +
                '}';
    }
}