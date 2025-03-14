<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }

        header {
            background-color: #333;
            color: white;
            padding: 15px;
            font-size: 24px;
        }

        nav ul {
            list-style: none;
            background: #444;
            padding: 10px;
            text-align: center;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .container {
            margin-top: 50px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 60%;
            margin-left: auto;
            margin-right: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: white;
        }

        .action-btn {
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }

        .delete-btn {
            background-color: red;
            color: white;
        }

        .update-btn {
            background-color: blue;
            color: white;
        }


            .receipt-container {
                max-width: 600px;
                background: white;
                padding: 20px;
                margin: auto;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
            }
            h3 {
                color: #333;
                border-bottom: 2px solid #ddd;
                padding-bottom: 10px;
            }
            .details {
                text-align: left;
                margin: 15px 0;
            }
            .details p {
                margin: 5px 0;
                font-size: 16px;
            }
            .download-btn {
                background-color: #007BFF;
                color: white;
                border: none;
                padding: 10px 15px;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
                margin-top: 20px;
            }
            .download-btn:hover {
                background-color: #0056b3;
            }
    </style>
</head>
<body>
<nav>
    <ul>
        <li><a href="adminPanel.jsp">Dashboard</a></li>
        <li><a href="bookingSuccess.jsp">Booking</a></li>
        <li><a href="RegisterEmployee.jsp">Add Employee</a></li>
        <li><a href="registerDriver.jsp">Add Driver</a></li>
        <li>
            <% if (session.getAttribute("user") != null) { %>
            <a href="logout">Logout</a>
            <% } else { %>
            <a href="indexLogin.jsp">Login</a>
            <% } %>
        </li>
    </ul>
</nav>

<div class="container">
    <h2>Booking Successful!</h2>
    <p>The receipt is ready. Click below to download it:</p>
    <div class="receipt-container">
            <h3>Receipt for Booking <%= request.getParameter("bookingId") %></p></h3>
            <div class="details">
                <h4>Customer Details</h4>
                <p><strong>Name:</strong> <%= request.getParameter("cusName") %></p>
                <p><strong>Address:</strong> <%= request.getParameter("cusAddress") %></p>
                <p><strong>Email:</strong> <%= request.getParameter("cusEmail") %></p>
                <p><strong>Mobile Number:</strong> <%= request.getParameter("cusMobileNo") %></p>
            </div>
            <div class="details">
                <h4>Journey Details</h4>
                <p><strong>From:</strong> <%= request.getParameter("from") %></p>
                <p><strong>To:</strong> <%= request.getParameter("to") %></p>
                <p><strong>Departure:</strong> <%= request.getParameter("departureDate") %></p>
                <p><strong>Return:</strong> <%= request.getParameter("returnDate") %></p>
            </div>
            <div class="details">
                <h4>Vehicle Details</h4>
                <p><strong>Vehicle Type:</strong> <%= request.getParameter("vehicleType") %></p>
                <p><strong>Paid :</strong> <%= request.getParameter("totalPrice") %></p>
                <p><strong>Driver:</strong> <%= request.getParameter("driverName") %></p>
                <p><strong>Passengers:</strong> <%= request.getParameter("passengers") %></p>
            </div>
           <form action="DownloadReceiptServlet" method="POST">
               <input type="hidden" name="bookingId" value="<%= request.getParameter("bookingId") %>">
               <input type="hidden" name="cusName" value="<%= request.getParameter("cusName") %>">
               <input type="hidden" name="cusAddress" value="<%= request.getParameter("cusAddress") %>">
               <input type="hidden" name="cusEmail" value="<%= request.getParameter("cusEmail") %>">
               <input type="hidden" name="cusMobileNo" value="<%= request.getParameter("cusMobileNo") %>">
               <input type="hidden" name="from" value="<%= request.getParameter("from") %>">
               <input type="hidden" name="to" value="<%= request.getParameter("to") %>">
               <input type="hidden" name="departureDate" value="<%= request.getParameter("departureDate") %>">
               <input type="hidden" name="returnDate" value="<%= request.getParameter("returnDate") %>">
               <input type="hidden" name="vehicleType" value="<%= request.getParameter("vehicleType") %>">
               <input type="hidden" name="totalPrice" value="<%= request.getParameter("totalPrice") %>">
               <input type="hidden" name="driverName" value="<%= request.getParameter("driverName") %>">
               <input type="hidden" name="passengers" value="<%= request.getParameter("passengers") %>">

               <button type="submit" class="download-btn">
                   Download Receipt as PDF
               </button>
           </form>

        </div>



</div>
</body>
</html>