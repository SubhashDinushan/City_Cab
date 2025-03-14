package org.citycab.servlet;

import org.citycab.model.Customer;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class SaveCustomerServletTest {

    @Test
    void testSaveCustomer() {
        // Create a customer object with sample data
        Customer customer = new Customer("Subhash Dinushan", "ICBT", "subhashdinushan.w@gmail.com", "0741013044");

        // Verify that the customer object is not null
        assertNotNull(customer);

        // Validate the customer's details using the correct getter method names
        assertEquals("Subhash Dinushan", customer.getName()); // Change this if your getter method is different
        assertEquals("ICBT", customer.getAddress());
        assertEquals("subhashdinushan.w@gmail.com", customer.getEmail());
        assertEquals("0741013044", customer.getMobileNo());
    }
}
