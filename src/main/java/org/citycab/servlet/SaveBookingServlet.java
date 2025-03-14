package org.citycab.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.citycab.dao.BookingDao;
import org.citycab.dao.CustomerDao;
import org.citycab.dao.VehicleDAO;
import org.citycab.model.Booking;
import org.citycab.utils.DateConversion;

import java.io.IOException;
import java.sql.Date;


@WebServlet("/SaveBookingServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class SaveBookingServlet extends HttpServlet {

    private final CustomerDao customerDao = new CustomerDao();
    private final VehicleDAO vehicleDAO = new VehicleDAO();
    private final BookingDao bookingDao = new BookingDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String from = request.getParameter("from");
            String to = request.getParameter("to");
            String departureDate = request.getParameter("departureDate");
            String returnDate = request.getParameter("returnDate");
            String vehicleType = request.getParameter("vehicleType");
            String driverName = request.getParameter("driverName");
            String passengers = request.getParameter("passengers");
            String totalPrice = request.getParameter("totalPrice");
            String customerName = request.getParameter("cusName");
            String customerAddress = request.getParameter("cusAddress");
            String customerEmail = request.getParameter("cusEmail");
            String customerMobileNo = request.getParameter("cusMobileNo");

            if (customerName == null || customerAddress == null || customerEmail == null ||
                    customerMobileNo == null) {
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
                return;
            }

            int cusId = customerDao.getCustomerId(customerName.trim());
            int vId = vehicleDAO.getVehicleId(vehicleType.trim());
            int drId = vehicleDAO.getDriverIdByName(driverName.trim());

            Date depDate = DateConversion.stringToSqlDate(departureDate);
            Date retDate = DateConversion.stringToSqlDate(returnDate);


            Booking newBooking =  new Booking(cusId,vId,drId,from,to,totalPrice,passengers, depDate, retDate);
            int bookingId = bookingDao.addBooking(newBooking);

           if (bookingId>0) {



               // Construct the URL for redirect with query parameters
               String redirectURL = "bookingSuccess.jsp?bookingId=" + bookingId +
                       "&vehicleType=" + vehicleType +
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
