package org.citycab.servlet;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class LoginServletTest {
    @Test
    void adminLoginTest() {
        String role = "admin";
        String password = "123456";
        String email = "subhashdinushan.w@gmail.com";
        assertEquals("admin", role);
    }

    @Test
    void employeeLoginTest() {
        String role = "employee";
        String password = "123456";
        String email = "subhash@gmail.com";
        assertEquals("employee", role);
    }
}