package org.citycab.model;

public class Customer {
    private int customerId; // New field for vehicle ID
    private String name;
    private String address;
    private String email; // References driver_id from the drivers table
    private String mobileNo; // Temporary field to store driver name


    // Constructor without vehicleId (for adding new vehicles)

    public Customer(String name, String address, String email, String mobileNo) {
        this.name = name;
        this.address = address;
        this.email = email;
        this.mobileNo = mobileNo;
    }

    public Customer(int customerId, String name, String address, String email, String mobileNo) {
        customerId = customerId;
        this.name = name;
        this.address = address;
        this.email = email;
        this.mobileNo = mobileNo;
    }

    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        customerId = customerId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId=" + customerId +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", email='" + email + '\'' +
                ", mobileNo='" + mobileNo + '\'' +
                '}';
    }
}