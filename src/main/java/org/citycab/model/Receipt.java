package org.citycab.model;

public class Receipt {
    private String bookingId;
    private String customerName; // New field for vehicle ID
    private String customerAddress;
    private String customerEmail;
    private String customerMobileNo;
    private String vehicleType;
    private String driverName;
    private String to;
    private String from; // References driver_id from the drivers table
    private String paid;
    private String passengerCount;
    private String depatureDate;
    private String returnDate;


    // Temporary field to store driver name


    // Constructor without vehicleId (for adding new vehicles)


    public Receipt(String bookingId, String customerName, String customerAddress, String customerEmail, String customerMobileNo, String vehicleType, String driverName, String from, String to, String paid, String passengerCount, String depatureDate, String returnDate) {
        this.bookingId = bookingId;
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerEmail = customerEmail;
        this.customerMobileNo = customerMobileNo;
        this.vehicleType = vehicleType;
        this.driverName = driverName;
        this.from = from;
        this.to = to;
        this.paid = paid;
        this.passengerCount = passengerCount;
        this.depatureDate = depatureDate;
        this.returnDate = returnDate;
    }

    public Receipt(String customerName, String customerAddress, String customerEmail, String customerMobileNo, String vehicleType, String driverName, String from, String to, String paid, String passengerCount, String depatureDate, String returnDate) {
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerEmail = customerEmail;
        this.customerMobileNo = customerMobileNo;
        this.vehicleType = vehicleType;
        this.driverName = driverName;
        this.from = from;
        this.to = to;
        this.paid = paid;
        this.passengerCount = passengerCount;
        this.depatureDate = depatureDate;
        this.returnDate = returnDate;
    }

    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerMobileNo() {
        return customerMobileNo;
    }

    public void setCustomerMobileNo(String customerMobileNo) {
        this.customerMobileNo = customerMobileNo;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
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

    public String getPaid() {
        return paid;
    }

    public void setPaid(String paid) {
        this.paid = paid;
    }

    public String getPassengerCount() {
        return passengerCount;
    }

    public void setPassengerCount(String passengerCount) {
        this.passengerCount = passengerCount;
    }

    public String getDepatureDate() {
        return depatureDate;
    }

    public void setDepatureDate(String depatureDate) {
        this.depatureDate = depatureDate;
    }

    public String getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(String returnDate) {
        this.returnDate = returnDate;
    }

    @Override
    public String toString() {
        return "Receipt{" +
                "bookingId=" + bookingId +
                ", customerName='" + customerName + '\'' +
                ", customerAddress='" + customerAddress + '\'' +
                ", customerEmail='" + customerEmail + '\'' +
                ", customerMobileNo='" + customerMobileNo + '\'' +
                ", vehicleType='" + vehicleType + '\'' +
                ", driverName='" + driverName + '\'' +
                ", to='" + to + '\'' +
                ", from='" + from + '\'' +
                ", paid='" + paid + '\'' +
                ", passengerCount='" + passengerCount + '\'' +
                ", depatureDate=" + depatureDate +
                ", returnDate=" + returnDate +
                '}';
    }
}