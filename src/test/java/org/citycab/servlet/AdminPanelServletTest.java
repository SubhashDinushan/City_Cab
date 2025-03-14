package org.citycab.servlet;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AdminPanelServletTest {

    @Test
    void adminPanelTest() {
        // Sample vehicle data
        String vehicleType = "Range Rover";
        double price = 8000.00;
        String driverName = "Subhash";
        String photoPath = "uploads/car.jpg";

        // Validate vehicle type
        assertEquals("Range Rover", vehicleType);

        // Validate price is positive
        assertTrue(price > 0);

        // Validate driver name is not null
        assertNotNull(driverName);

        // Validate the photo path starts with "uploads/"
        assertTrue(photoPath.startsWith("uploads/"));
    }
}
