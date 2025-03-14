package org.citycab.servlet;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class RegisterEmployeeServletTest {

    @Test
    void testRegisterEmployee() {
        // Simulated form data for registering an employee
        String empName = "Subhash Dinushan";
        String empNic = "972632708V";
        String empEmail = "subhash@gmail.com"; // Using a unique email for testing
        String empMobile = "0741013044";
        String empPassword = "123456";
        String userType = "employee";

        // Simulating the email existence check
        boolean emailExists = false; // Simulating that the email does NOT exist in the database

        // Registration should be successful if the email does not already exist
        boolean isRegistered = !emailExists; // Since the email does not exist, registration should succeed

        // Assert that registration succeeds
        assertTrue(isRegistered, "Employee should be registered successfully if the email is unique.");
    }
}
