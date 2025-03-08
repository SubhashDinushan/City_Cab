<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    // Session validation
    if (session.getAttribute("user") == null) {
        response.sendRedirect("indexLogin.jsp");
        return;
    }

    // Retrieve booking details from request parameters or session
    String from = request.getParameter("from") != null ? request.getParameter("from") : (String) session.getAttribute("from");
    String to = request.getParameter("to") != null ? request.getParameter("to") : (String) session.getAttribute("to");
    String departureDate = request.getParameter("departureDate") != null ? request.getParameter("departureDate") : (String) session.getAttribute("departureDate");
    String returnDate = request.getParameter("returnDate") != null ? request.getParameter("returnDate") : (String) session.getAttribute("returnDate");
    String passengers = request.getParameter("passengers") != null ? request.getParameter("passengers") : (String) session.getAttribute("passengers");
    String vehicleType = request.getParameter("vehicle") != null ? request.getParameter("vehicle") : (String) session.getAttribute("vehicle");
    String price = request.getParameter("price") != null ? request.getParameter("price") : (String) session.getAttribute("price");
    String driverName = request.getParameter("driver") != null ? request.getParameter("driver") : (String) session.getAttribute("driver");
    String custName = request.getParameter("cust-name") != null ? request.getParameter("cust-name") : (String) session.getAttribute("cust-name");
    String custAddress = request.getParameter("cust-address") != null ? request.getParameter("cust-address") : (String) session.getAttribute("cust-address");
    String custEmail = request.getParameter("cust-email") != null ? request.getParameter("cust-email") : (String) session.getAttribute("cust-email");
    String custPhone = request.getParameter("cust-phone") != null ? request.getParameter("cust-phone") : (String) session.getAttribute("cust-phone");

    // Set default values to avoid null issues
    if (from == null) from = "N/A";
    if (to == null) to = "N/A";
    if (departureDate == null) departureDate = "N/A";
    if (returnDate == null) returnDate = "N/A";
    if (passengers == null) passengers = "N/A";
    if (vehicleType == null) vehicleType = "N/A";
    if (price == null) price = "N/A";
    if (driverName == null) driverName = "N/A";
    if (custName == null) custName = "N/A";
    if (custAddress == null) custAddress = "N/A";
    if (custEmail == null) custEmail = "N/A";
    if (custPhone == null) custPhone = "N/A";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <link rel="stylesheet" href="../css/style.css"> <!-- External CSS if needed -->
    <style>
        /* Add your CSS styles here or link to an external stylesheet */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        p {
            margin: 10px 0;
        }
        .delete-link {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }
        .delete-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Booking Confirmation</h2>
    <p><strong>From:</strong> <%= from %></p>
    <p><strong>To:</strong> <%= to %></p>
    <p><strong>Departure Date:</strong> <%= departureDate %></p>
    <p><strong>Return Date:</strong> <%= returnDate %></p>
    <p><strong>Passengers:</strong> <%= passengers %></p>
    <p><strong>Vehicle Type:</strong> <%= vehicleType %></p>
    <p><strong>Price Per Day:</strong> Rs. <%= price %></p>
    <p><strong>Driver:</strong> <%= driverName %></p>
    <h2>Customer Details</h2>
    <p><strong>Customer Name:</strong> <%= custName %></p>
    <p><strong>Customer Address:</strong> <%= custAddress %></p>
    <p><strong>Customer Email:</strong> <%= custEmail %></p>
    <p><strong>Customer Phone:</strong> <%= custPhone %></p>

    <!-- Option to delete the booking -->
    <p>
        <a href="deleteBooking.jsp" class="delete-link">Delete Booking</a>
    </p>
</div>
<div class="container">
    <h2>Booking Confirmation</h2>
    <p><strong>From:</strong> <%= from %></p>
    <p><strong>To:</strong> <%= to %></p>
    <p><strong>Departure Date:</strong> <%= departureDate %></p>
    <p><strong>Return Date:</strong> <%= returnDate %></p>
    <p><strong>Passengers:</strong> <%= passengers %></p>
    <p><strong>Vehicle Type:</strong> <%= vehicleType %></p>
    <p><strong>Price Per Day:</strong> Rs. <%= price %></p>
    <p><strong>Driver:</strong> <%= driverName %></p>
    <h2>Customer Details</h2>
    <p><strong>Customer Name:</strong> <%= custName %></p>
    <p><strong>Customer Address:</strong> <%= custAddress %></p>
    <p><strong>Customer Email:</strong> <%= custEmail %></p>
    <p><strong>Customer Phone:</strong> <%= custPhone %></p>

    <!-- Option to delete the booking -->
    <p>
        <a href="deleteBooking.jsp" class="delete-link">Delete Booking</a>
    </p>
</div>
</body>
</html>
