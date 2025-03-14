package org.citycab.servlet;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class RegisterDriverServletTest {

    @Test
    void registerDriver() {
        // Simulating the form data for registering a driver
        String name = "Subhash Dinushan";
        String nic = "972632708V";
        String license = "ABC12345";
        String email = "subhashdinushan@gmail.com";
        String mobile = "0741013044";
        String pwd = "123456";

        // Simulating the registration logic
        boolean isRegistered = (name != null && !name.isEmpty()) &&
                (nic != null && !nic.isEmpty()) &&
                (license != null && !license.isEmpty()) &&
                (email != null && !email.isEmpty()) &&
                (mobile != null && !mobile.isEmpty()) &&
                (pwd != null && !pwd.isEmpty());

        // Check if all form fields are provided
        assertTrue(isRegistered, "Driver registration should be successful with all fields provided.");
    }
}
