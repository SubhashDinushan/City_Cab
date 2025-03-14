package org.citycab.model;

public class Driver {
    private int driverId;
    private String driverName;
    private String driverNIC;
    private String driverLicenseNo;
    private String driverEmail;
    private String driverMobileNo;

    private Driver(int driverId, String driverName, String driverNIC, String driverLicenseNo, String driverEmail, String driverMobileNo) {
        this.driverId = driverId;
        this.driverName = driverName;
        this.driverNIC = driverNIC;
        this.driverLicenseNo = driverLicenseNo;
        this.driverEmail = driverEmail;
        this.driverMobileNo = driverMobileNo;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public int getDriverId() {
        return driverId;
    }

    public void setDriverId(int driverId) {
        this.driverId = driverId;
    }

    public String getDriverNIC() {
        return driverNIC;
    }

    public void setDriverNIC(String driverNIC) {
        this.driverNIC = driverNIC;
    }

    public String getDriverLicenseNo() {
        return driverLicenseNo;
    }

    public void setDriverLicenseNo(String driverLicenseNo) {
        this.driverLicenseNo = driverLicenseNo;
    }

    public String getDriverEmail() {
        return driverEmail;
    }

    public void setDriverEmail(String driverEmail) {
        this.driverEmail = driverEmail;
    }

    public String getDriverMobileNo() {
        return driverMobileNo;
    }

    public void setDriverMobileNo(String driverMobileNo) {
        this.driverMobileNo = driverMobileNo;
    }


}
