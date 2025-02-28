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

    nav {
        display: flex;
        align-items: center;
        width: 100%;
        justify-content: space-between;
    }

    nav ul {
        list-style: none;
        display: flex;
        flex-grow: 1;
        justify-content: center;
    }

    nav ul li {
        margin: 0 15px;
    }

    nav ul li a {
        color: white;
        text-decoration: none;
    }

    .login {
        background: #ff9800;
        border: none;
        padding: 8px 12px;
        cursor: pointer;
        border-radius: 5px;
        color: white;
        margin-left: auto;
    }

    .login-btn {
        display: inline-block;
        padding: 8px 15px;
        font-size: 18px;
        font-weight: bold;
        color: white;
        background: linear-gradient(135deg, #6e8efb, #a777e3);
        border: none;
        border-radius: 8px;
        text-decoration: none;
        transition: all 0.3s ease-in-out;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }
    .login-btn:hover {
        background: linear-gradient(135deg, #5b7bf9, #9558d8);
        transform: translateY(-2px);
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.25);
    }

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

    /* Form Styles */
    form {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    label {
        font-weight: bold;
    }

    input {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button {
        padding: 10px;
        font-size: 1em;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .add-customer-btn {
        background: #1a1a2e;
        color: white;
    }

    .confirm-btn {
        background: #ff9800;
        color: white;
    }

    /* Footer */
    footer {
        background: #1a1a2e;
        color: white;
        padding: 20px;
        text-align: center;
    }

    .footer-content {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        gap: 20px;
    }

    .footer-content div h4 {
        margin-bottom: 10px;
    }

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
            <li><a href="#">Home</a></li>
            <li><a href="#">Book</a></li>
            <li><a href="#">Offers</a></li>
            <li><a href="#">Help</a></li>
        </ul>
        <% if (session.getAttribute("user") != null) { %>
        <a href="logout">Logout</a>
        <% } else { %>
        <a href="indexLogin.jsp">Login</a>
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
            <h2>Vehicle Details</h2>
            <p><strong>Vehicle Type:</strong> SUV</p>
            <p><strong>Price:</strong> $200</p>
        </div>
    </div>
</section>




<!-- Customer Adding Form -->
<div class="customer-form">
    <h2>Add Customer</h2>
    <form>
        <label for="cust-name">Customer Name:</label>
        <input type="text" id="cust-name" name="cust-name" required>

        <label for="cust-name">Customer Address:</label>
        <input type="text" id="cust-name" name="cust-name" required>

        <label for="cust-email">Email:</label>
        <input type="email" id="cust-email" name="cust-email" required>

        <label for="cust-phone">Phone Number:</label>
        <input type="tel" id="cust-phone" name="cust-phone" required>

        <button type="submit" class="add-customer-btn">Add Customer</button>
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
        <div class="company">
            <h4>Company</h4>
            <p>About us</p>
        </div>
        <div class="support">
            <h4>Support</h4>
            <p>Hotels</p>
            <p>Baggage</p>
        </div>
        <div class="contact">
            <h4>Contact</h4>
            <p>0741013044</p>
            <p>Subhash@gmail.com</p>
        </div>
    </div>
</footer>
</body>
</html>
