<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Employee Help Guide - CityCab</title>
    <style>
        /* Advanced Styling */
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }
        body { background: #f2f2f2; color: #333; }
        header { background: rgba(0, 0, 50, 0.9); color: white; padding: 15px; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); }
        .logo { font-size: 1.8em; font-weight: bold; letter-spacing: 1px; }
        nav { display: flex; align-items: center; width: 100%; justify-content: space-between; }
        nav ul { list-style: none; display: flex; flex-grow: 1; justify-content: center; }
        nav ul li { margin: 0 20px; }
        nav ul li a { color: white; text-decoration: none; font-weight: 500; transition: 0.3s; }
        nav ul li a:hover { color: #ffd700; }
        .login-btn { background: #ffcc00; color: #000; padding: 10px 20px; border-radius: 8px; text-decoration: none; font-weight: bold; transition: 0.3s; }
        .login-btn:hover { background: #ffdd44; }

        /* Help Guide Container Styling */
        .container {
            max-width: 800px;
            margin: 50px auto;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }
        .container h1 {
            text-align: center;
            color: #0b0b54;
            margin-bottom: 40px;
            font-size: 2.5em;
            font-weight: 700;
            letter-spacing: -0.5px;
        }
        .container h2 {
            color: #0b0b54;
            margin-top: 30px;
            margin-bottom: 20px;
            font-size: 1.8em;
            font-weight: 600;
            letter-spacing: -0.3px;
        }
        .container p {
            color: #000000;
            line-height: 1.8;
            font-size: 1.4em;
            margin-bottom: 20px;
            font-weight: 520;
        }
        .container ul {
            list-style-type: disc;
            margin-left: 40px;
            margin-bottom: 25px;
        }
        .container ul li {
            color: #000000;
            line-height: 1.8;
            font-size: 1.3em;
            margin-bottom: 10px;
            font-weight: 510;
        }
        .container .note {
            background-color: #f9f9f9;
            padding: 20px;
            border-left: 4px solid #0b0b54;
            margin: 25px 0;
            border-radius: 8px;
            font-size: 1em;
            line-height: 1.8;
        }
        .container .note strong {
            color: #0b0b54;
            font-weight: 600;
        }
        footer {
            background: #1a1a2e;
            color: white;
            padding: 30px 20px;
            text-align: center;
            box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.2);
            margin-top: 50px;
        }
        .footer-content {
            max-width: 1100px;
            margin: auto;
        }
        .footer-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 10px;
        }
        .footer-links a {
            color: #ffcc00;
            text-decoration: none;
            transition: 0.3s;
        }
        .footer-links a:hover {
            color: white;
        }
    </style>
</head>
<body>
<header>
    <nav>
        <div class="logo">CityCab</div>
        <ul class="nav-menu">
            <li><a href="employee.jsp">Home</a></li>
            <li><a href="#">Book</a></li>
            <li><a href="#">Offers</a></li>
            <li><a href="help.jsp">Help</a></li>
        </ul>
        <% if (session.getAttribute("user") != null) { %>
        <a href="logout" class="login-btn">Logout</a>
        <% } else { %>
        <a href="indexLogin.jsp" class="login-btn">Login</a>
        <% } %>
    </nav>
</header>

<div class="container">
    <h1>Employee Help Guide</h1>
    <p>Welcome to the CityCab Management System! This guide will help you navigate and use the system effectively.</p>

    <div class="section">
        <h2>1. Logging In</h2>
        <p>To access the system, follow these steps:</p>
        <ul>
            <li>Enter your username and password on the login page.</li>
            <li>Click the <strong>Login</strong> button to access your dashboard.</li>
            <li>If you encounter any issues, contact the System Admin for assistance.</li>
        </ul>
        <div class="note">
            <strong>Note:</strong> Ensure your password is kept confidential and changed regularly.
        </div>
    </div>

    <div class="section">
        <h2>2. Managing Bookings</h2>
        <p>As an employee, you can manage customer bookings:</p>
        <ul>
            <li>To add a new booking, go to the <strong>Bookings</strong> section and click <strong>Add Booking</strong>.</li>
            <li>Enter customer details, pickup location, and destination.</li>
            <li>Assign a driver and vehicle based on availability.</li>
            <li>Verify customer details and payment status before confirming the booking.</li>
        </ul>
        <div class="note">
            <strong>Note:</strong> Always double-check customer information to avoid errors.
        </div>
    </div>

    <div class="section">
        <h2>3. Viewing and Searching Bookings</h2>
        <p>You can view and search for bookings:</p>
        <ul>
            <li>Use the <strong>Search</strong> feature to find specific bookings by order number or customer name.</li>
            <li>View all details of a booking, including assigned driver and vehicle.</li>
        </ul>
    </div>

    <div class="section">
        <h2>4. Processing Payments</h2>
        <p>To process payments:</p>
        <ul>
            <li>Go to the <strong>Payments</strong> section and select the booking.</li>
            <li>Choose the payment method (cash, online, or cheque).</li>
            <li>Generate and print the bill for the customer.</li>
        </ul>
        <div class="note">
            <strong>Note:</strong> Ensure the payment is verified before marking the booking as complete.
        </div>
    </div>

    <div class="section">
        <h2>5. Logging Out</h2>
        <p>Always log out of the system after completing your tasks:</p>
        <ul>
            <li>Click the <strong>Log Out</strong> button at the top-right corner of the screen.</li>
            <li>This ensures your account remains secure.</li>
        </ul>
    </div>

    <div class="section">
        <h2>Need Further Assistance?</h2>
        <p>If you need additional help, contact the System Admin or refer to the user manual provided.</p>
    </div>
</div>

<footer>
    <div class="footer-content">
        <p>CityCab &copy; 2025 | All Rights Reserved</p>
        <p>Contact us: subhashdinushan.w@gmail.com | Phone: +94 741013044</p>
        <div class="footer-links">
            <a href="#">Privacy Policy</a>
            <a href="#">Terms of Service</a>
            <a href="#">Careers</a>
        </div>
    </div>
</footer>
</body>
</html>