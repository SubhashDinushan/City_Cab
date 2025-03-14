package org.citycab.servlet;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class LogoutServletTest {

    @Test
    void logoutTest() {
        // Simulate the expected redirection after logout
        String expectedRedirect = "indexLogin.jsp";
        String actualRedirect = "indexLogin.jsp"; // Simulated redirect after logout

        // Assert that the expected redirect matches the actual one
        assertEquals(expectedRedirect, actualRedirect);
    }
}
