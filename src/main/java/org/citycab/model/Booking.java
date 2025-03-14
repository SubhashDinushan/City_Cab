package org.citycab.model;

import java.sql.Date;

public class Booking {

    private int bookingId;
    private int customerId; // New field for vehicle ID
    private int vehicleId;
    private int driverId;
    private String to;
    private String from; // References driver_id from the drivers table
    private String price;
    private String passengerCount;
    private Date depatureDate;
    private Date returnDate;


    // Temporary field to store driver name


    // Constructor without vehicleId (for adding new vehicles)


    public Booking(int customerId, int vehicleId, int driverId, String to, String from, String price, String passengerCount, Date depatureDate, Date returnDate) {
        this.customerId = customerId;
        this.vehicleId = vehicleId;
        this.driverId = driverId;
        this.to = to;
        this.from = from;
        this.price = price;
        this.passengerCount = passengerCount;
        this.depatureDate = depatureDate;
        this.returnDate = returnDate;
    }

    public Booking(int bookingId, int customerId, int vehicleId, int driverId, String to, String from, String price, String passengerCount, Date depatureDate, Date returnDate) {
        this.bookingId = bookingId;
        this.customerId = customerId;
        this.vehicleId = vehicleId;
        this.driverId = driverId;
        this.to = to;
        this.from = from;
        this.price = price;
        this.passengerCount = passengerCount;
        this.depatureDate = depatureDate;
        this.returnDate = returnDate;
    }

    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        customerId = customerId;
    }

    public int getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    public int getDriverId() {
        return driverId;
    }

    public void setDriverId(int driverId) {
        this.driverId = driverId;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPassengerCount() {
        return passengerCount;
    }

    public void setPassengerCount(String passengerCount) {
        this.passengerCount = passengerCount;
    }

    public Date getDepatureDate() {
        return depatureDate;
    }

    public void setDepatureDate(Date depatureDate) {
        this.depatureDate = depatureDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "bookingId='" + bookingId + '\'' +
                ", customerId='" + customerId + '\'' +
                ", vehicleId=" + vehicleId +
                ", driverId=" + driverId +
                ", to='" + to + '\'' +
                ", from='" + from + '\'' +
                ", price='" + price + '\'' +
                ", passengerCount='" + passengerCount + '\'' +
                ", depatureDate=" + depatureDate +
                ", returnDate='" + returnDate + '\'' +
                '}';
    }}
