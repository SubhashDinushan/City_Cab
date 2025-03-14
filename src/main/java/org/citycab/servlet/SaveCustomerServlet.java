package org.citycab.servlet;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.citycab.dao.CustomerDao;
import org.citycab.model.Customer;

import java.io.IOException;

@WebServlet("/SaveCustomerServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class SaveCustomerServlet extends HttpServlet {

    private final CustomerDao customerDao = new CustomerDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String customerName = request.getParameter("cusName");
            String customerAddress = request.getParameter("cusAddress");
            String customerEmail = request.getParameter("cusEmail");
            String customerMobileNo = request.getParameter("cusMobileNo");

            if (customerName == null || customerAddress == null || customerEmail == null ||
                    customerMobileNo == null) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
                return;
            }

            Customer newCustomer =  new Customer(customerName,customerAddress,customerEmail,customerMobileNo);

            boolean isAdded = customerDao.addCustomer(newCustomer);

           if (isAdded) {

               // Get form data and hidden parameters
               String from = request.getParameter("from");
               String to = request.getParameter("to");
               String departureDate = request.getParameter("departureDate");
               String returnDate = request.getParameter("returnDate");
               String totalPrice = request.getParameter("totalPrice");
               String passengers = request.getParameter("passengers");
               String vehicleType = request.getParameter("vehicleType");
               String driverName = request.getParameter("driverName");

               // Construct the URL for redirect with query parameters
               String redirectURL = "confirmBooking.jsp?vehicleType=" + vehicleType +
                       "&driverName=" + driverName +
                       "&from=" + from +
                       "&to=" + to +
                       "&departureDate=" + departureDate +
                       "&returnDate=" + returnDate +
                       "&passengers=" + passengers +
                       "&cusName=" + customerName +
                       "&cusAddress=" + customerAddress +
                       "&cusEmail=" + customerEmail +
                       "&cusMobileNo=" + customerMobileNo +
                       "&totalPrice=" + totalPrice;

               // Redirect to confirmBooking.jsp with parameters
               response.sendRedirect(redirectURL);
            } else {
                response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Customer addition failed.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error processing request.");
        }
    }
}
