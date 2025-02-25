package org.citycab.model;

public class Vehicle {
    private String vehicleType;
    private double price;
    private String driverName;
    private String vehiclePhoto;

    public Vehicle(String vehicleType, double price, String driverName, String vehiclePhoto) {
        this.vehicleType = vehicleType;
        this.price = price;
        this.driverName = driverName;
        this.vehiclePhoto = vehiclePhoto;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public double getPrice() {
        return price;
    }

    public String getDriverName() {
        return driverName;
    }

    public String getVehiclePhoto() {
        return vehiclePhoto;
    }
}
