package org.citycab.servlet;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import jakarta.activation.DataHandler;
import jakarta.activation.DataSource;
import jakarta.mail.*;
import jakarta.mail.internet.*;
import jakarta.mail.util.ByteArrayDataSource;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.citycab.model.Receipt;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Properties;

@WebServlet("/DownloadReceiptServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class DownloadReceiptServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the receipt details from the request or session

        // Get receipt details from the request
        Receipt receipt = new Receipt(
                request.getParameter("bookingId"),
                request.getParameter("cusName"),
                request.getParameter("cusAddress"),
                request.getParameter("cusEmail"),
                request.getParameter("cusMobileNo"),
                request.getParameter("vehicleType"),
                request.getParameter("driverName"),
                request.getParameter("to"),
                request.getParameter("from"),
                request.getParameter("totalPrice"),
                request.getParameter("passengers"),
                request.getParameter("departureDate"),
                request.getParameter("returnDate")
        );

        String fileName = "receipt_" + receipt.getBookingId() + ".pdf"; // Dynamic filename

        // Set the response headers to indicate it's a PDF download
        response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

        // Write PDF directly to the response output stream
        PdfWriter writer = new PdfWriter(response.getOutputStream()); // Directly write to the response output stream
        PdfDocument pdfDocument = new PdfDocument(writer);
        Document document = new Document(pdfDocument);

        // Add content to the PDF
        document.add(new Paragraph("EReceipt Booking ID - " + receipt.getBookingId()));
        document.add(new Paragraph(""));
        document.add(new Paragraph("Customer Name: " + receipt.getCustomerName()));
        document.add(new Paragraph("Customer Address: " + receipt.getCustomerAddress()));
        document.add(new Paragraph("Customer Email: " + receipt.getCustomerEmail()));
        document.add(new Paragraph("Customer Mobile Number: " + receipt.getCustomerMobileNo()));
        document.add(new Paragraph("Vehicle Type: " + receipt.getVehicleType()));
        document.add(new Paragraph("Driver Name: " + receipt.getDriverName()));
        document.add(new Paragraph("Drop Off Point: " + receipt.getFrom()));
        document.add(new Paragraph("Pick Up Point: " + receipt.getTo()));
        document.add(new Paragraph("Paid: " + receipt.getPaid()));
        document.add(new Paragraph("Passenger Count: " + receipt.getPassengerCount()));
        document.add(new Paragraph("Departure Date: " + receipt.getDepatureDate()));
        document.add(new Paragraph("Return Date: " + receipt.getReturnDate()));

        // Close the document and finalize the PDF
        document.close();

        // Step 1: Create a ByteArrayOutputStream
        ByteArrayOutputStream pdfOutputStream = new ByteArrayOutputStream();

// Step 2: Generate the PDF (Replace this with your actual PDF generation code)
        try {
            generatePdf(receipt,pdfOutputStream); // Ensure this method writes the PDF into pdfOutputStream
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        String recipientName = receipt.getCustomerName();
        String recipientEmail = receipt.getCustomerEmail();

// Step 3: Send the email with the correct OutputStream type
        sendEmailWithAttachment(recipientName,recipientEmail, fileName, pdfOutputStream);


        // Send the email with PDF attachment
       // sendEmailWithAttachment("sanduniwalgamage@gmail.com", fileName, response.getOutputStream());

        ServletOutputStream outStream = response.getOutputStream();
        pdfOutputStream.writeTo(outStream);
        outStream.flush();
        pdfOutputStream.close();






    }

    private void generatePdf(Receipt receipt, ByteArrayOutputStream pdfOutputStream) throws Exception {
        PdfWriter writer = new PdfWriter(pdfOutputStream);
        PdfDocument pdfDoc = new PdfDocument(writer);
        Document document = new Document(pdfDoc); // ✅ Correct way in iText 7
        document.add(new Paragraph("EReceipt Booking ID - " + receipt.getBookingId()));
        document.add(new Paragraph(""));
        // Add content to the PDF
        document.add(new Paragraph("Customer Name: " + receipt.getCustomerName()));
        document.add(new Paragraph("Customer Address: " + receipt.getCustomerAddress()));
        document.add(new Paragraph("Customer Email: " + receipt.getCustomerEmail()));
        document.add(new Paragraph("Customer Mobile Number: " + receipt.getCustomerMobileNo()));
        document.add(new Paragraph("Vehicle Type: " + receipt.getVehicleType()));
        document.add(new Paragraph("Driver Name: " + receipt.getDriverName()));

        document.add(new Paragraph("Drop Off Point: " + receipt.getFrom()));
        document.add(new Paragraph("Pick Up Point: " + receipt.getTo()));
        document.add(new Paragraph("Paid: " + receipt.getPaid()));
        document.add(new Paragraph("Passenger Count: " + receipt.getPassengerCount()));
        document.add(new Paragraph("Departure Date: " + receipt.getDepatureDate()));
        document.add(new Paragraph("Return Date: " + receipt.getReturnDate()));
        document.close();
    }



    private void sendEmailWithAttachment(String recipientName, String recipientEmail, String fileName, OutputStream pdfOutputStream) {
        // Set up email properties
        String host = "smtp.gmail.com";
        final String user = "citycaborg@gmail.com"; // Your email
        final String password = "ojgp zlam agcx hgza";
        //citycab@1234"; // Your email password

        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // Get the Session object.
        Session session = Session.getInstance(properties, new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            // Create a MimeMessage
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));
            message.setSubject("Booking Receipt - " + fileName);

            // Create a multipart message
            MimeMultipart multipart = new MimeMultipart();

            // Create the body part for the email message
            MimeBodyPart messageBodyPart = new MimeBodyPart();
            String emailBody = "Hello " + recipientName + ",\n\n" +
                    "Your booking is successful!!\n\n" +
                    "Please find your e-receipt here.";
            messageBodyPart.setText(emailBody);
            //messageBodyPart.setText("Please find attached the receipt for your booking.");
            multipart.addBodyPart(messageBodyPart);

            // Create the body part for the PDF attachment
            messageBodyPart = new MimeBodyPart();

            // Convert OutputStream to byte array
            if (pdfOutputStream instanceof ByteArrayOutputStream) {
                byte[] pdfBytes = ((ByteArrayOutputStream) pdfOutputStream).toByteArray();
                DataSource source = new ByteArrayDataSource(pdfBytes, "application/pdf"); // Correct type
                messageBodyPart.setDataHandler(new DataHandler(source));
                messageBodyPart.setFileName(fileName);
                multipart.addBodyPart(messageBodyPart);
            } else {
                throw new IllegalArgumentException("pdfOutputStream must be a ByteArrayOutputStream");
            }

            // Set the content of the message
            message.setContent(multipart);

            // Send the message
            Transport.send(message);

            System.out.println("Email sent successfully with attachment.");
        } catch (Exception e) {
            e.printStackTrace();
        }}
}