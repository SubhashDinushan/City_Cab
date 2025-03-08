<%
    // Session validation
    if (session.getAttribute("user") == null) {
        response.sendRedirect("indexLogin.jsp");
        return; // Stop further execution of the JSP
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>CityCab Booking</title>
    <!-- <link rel="stylesheet" href="../css/addCustomer.css" /> -->
    <style>/* Global Styles */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        background: #f4f4f4;
        color: #333;
    }

    /* Header & Navigation */
    header {
        background: rgba(0, 0, 50, 0.9);
        color: white;
        padding: 15px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .logo {
        font-size: 1.5em;
        font-weight: bold;
    }

    nav { display: flex; align-items: center; width: 100%; justify-content: space-between; }
    nav ul { list-style: none; display: flex; flex-grow: 1; justify-content: center; }
    nav ul li { margin: 0 20px; }
    nav ul li a { color: white; text-decoration: none; font-weight: 500; transition: 0.3s; }
    nav ul li a:hover { color: #ffd700; }
    .login-btn { background: #ffcc00; color: #000; padding: 10px 20px; border-radius: 8px; text-decoration: none; font-weight: bold; transition: 0.3s; }
    .login-btn:hover { background: #ffdd44; }

    /* Booking Section */
    .booking-section {
        padding: 40px;
        max-width: 800px;
        margin: 20px auto;
    }

    .booking-summary, .vehicle-details, .employee-details, .customer-form, .final-confirmation {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    h2 {
        margin-bottom: 15px;
        color: #222;
    }

    .summary-details p, .vehicle-details p {
        margin-bottom: 10px;
    }

    /* Compact Form Styles */
    .customer-form {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
        max-width: 400px; /* Limit the width for a compact look */
        margin: 0 auto; /* Center the form */
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .customer-form:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    .customer-form h2 {
        text-align: center;
        margin-bottom: 15px;
        font-size: 1.5em;
        color: #1a1a2e;
        position: relative;
    }

    .customer-form h2::after {
        content: '';
        display: block;
        width: 50px;
        height: 2px;
        background: #ff9800;
        margin: 8px auto 0;
        border-radius: 2px;
    }

    .customer-form form {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .customer-form label {
        font-weight: 600;
        color: #333;
        margin-bottom: 3px;
        font-size: 0.9em;
    }

    .customer-form input {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 0.9em;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    .customer-form input:focus {
        border-color: #ff9800;
        box-shadow: 0 0 6px rgba(255, 152, 0, 0.3);
        outline: none;
    }

    .customer-form button {
        padding: 10px;
        font-size: 1em;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        background: linear-gradient(135deg, #1a1a2e, #16213e);
        color: white;
        transition: background 0.3s ease, transform 0.3s ease;
    }

    .customer-form button:hover {
        background: linear-gradient(135deg, #16213e, #1a1a2e);
        transform: translateY(-2px);
    }

    .customer-form button:active {
        transform: translateY(0);
    }

    /* Final Confirmation Section */
    .final-confirmation {
        background: white;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 500px;
        margin: 20px auto;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .final-confirmation:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
    }

    .final-confirmation h2 {
        font-size: 1.8em;
        color: #1a1a2e;
        margin-bottom: 20px;
        position: relative;
    }

    .final-confirmation h2::after {
        content: '';
        display: block;
        width: 60px;
        height: 3px;
        background: #ff9800;
        margin: 10px auto 0;
        border-radius: 2px;
    }

    .confirm-btn {
        padding: 12px 30px;
        font-size: 1.1em;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        background: linear-gradient(135deg, #1a1a2e, #16213e);
        color: white;
        transition: background 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    .confirm-btn:hover {
        background: linear-gradient(135deg, #16213e, #1a1a2e);
        transform: translateY(-3px);
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
    }

    .confirm-btn:active {
        transform: translateY(0);
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    /* Footer */
    footer { background: #1a1a2e; color: white; padding: 30px 20px; text-align: center; box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.2); }
    .footer-content { max-width: 1100px; margin: auto; }
    .footer-links { display: flex; justify-content: center; gap: 20px; margin-top: 10px; }
    .footer-links a { color: #ffcc00; text-decoration: none; transition: 0.3s; }
    .footer-links a:hover { color: white; }

    /* Responsive Styles */
    @media (max-width: 768px) {
        .nav-menu {
            flex-direction: column;
            gap: 10px;
        }
    }
    </style>
</head>
<body>

<!-- Header & Navigation -->
<header>
    <nav>
        <div class="logo">CityCab</div>
        <ul class="nav-menu">
            <li><a href="employee.jsp">Home</a></li>
            <li><a href="#">Book</a></li>
            <li><a href="#">Offers</a></li>
            <li><a href="#">Help</a></li>
        </ul>
        <% if (session.getAttribute("user") != null) { %>
        <a href="logout" class="login-btn">Logout</a>
        <% } else { %>
        <a href="indexLogin.jsp" class="login-btn">Login</a>
        <% } %>
    </nav>
</header>


<!-- Booking Section (Static Display) -->
<section class="booking-section">
    <div class="booking-summary">
        <h2>Booking Summary</h2>
        <div class="summary-details">
            <p><strong>From:</strong> City A</p>
            <p><strong>To:</strong> City B</p>
            <p><strong>Departure:</strong> 2025-02-10</p>
            <p><strong>Return:</strong> 2025-02-15</p>
            <p><strong>Passengers:</strong> 5</p>

<%--            Vehicle Details--%>
            <h2>Vehicle Details</h2>
            <p><strong>Vehicle Type:</strong> SUV</p>
            <p><strong>Price:</strong> $200</p>
            <p><strong>Driver Name:</strong> Subhash</p>
        </div>
    </div>
</section>

<!-- Customer Adding Form -->
<div class="customer-form">
    <h2>Add Customer</h2>
    <form>
        <label for="cust-name">Customer Name:</label>
        <input type="text" id="cust-name" name="cust-name" required>

        <label for="cust-address">Customer Address:</label>
        <input type="text" id="cust-address" name="cust-address" required>

        <label for="cust-email">Email:</label>
        <input type="email" id="cust-email" name="cust-email" required>

        <label for="cust-phone">Phone Number:</label>
        <input type="tel" id="cust-phone" name="cust-phone" required>

<%--        <button type="submit" class="add-customer-btn">Add Customer</button>--%>
    </form>
</div>

<!-- Final Confirmation -->
<div class="final-confirmation">
    <h2>Final Confirmation</h2>
    <button class="confirm-btn">Confirm Booking</button>
</div>

</section>

<!-- Footer -->
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
