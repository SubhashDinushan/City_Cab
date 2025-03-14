<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CityCab Booking</title>
    <link rel="stylesheet" href="../css/style.css"> <!-- External CSS if needed -->
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
    .container.customer-form {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
        max-width: 400px; /* Smaller form width */
        margin: 0 auto; /* Center the form */
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .container.customer-form:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.15);
    }

    .container.customer-form h2 {
        text-align: center;
        font-size: 1.4em;
        color: #1a1a2e;
        margin-bottom: 15px;
    }

    .container.customer-form form {
        display: flex;
        flex-direction: column;
        gap: 12px; /* Reduced gap between form elements */
    }

    .container.customer-form label {
        font-weight: 600;
        color: #333;
        font-size: 0.9em; /* Smaller label size */
    }

    .container.customer-form input {
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 0.9em;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    .container.customer-form input:focus {
        border-color: #ff9800;
        box-shadow: 0 0 6px rgba(255, 152, 0, 0.3);
        outline: none;
    }

    .container.customer-form button {
        padding: 10px;
        font-size: 1em;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        background: linear-gradient(135deg, #1a1a2e, #16213e);
        color: white;
        transition: background 0.3s ease, transform 0.3s ease;
    }

    .container.customer-form button:hover {
        background: linear-gradient(135deg, #16213e, #1a1a2e);
        transform: translateY(-2px);
    }

    .container.customer-form button:active {
        transform: translateY(0);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .container.customer-form {
            max-width: 95%;
        }
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

    .container {
        background: white;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        max-width: 800px;
        margin: 20px auto;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .container:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    .container h2 {
        /*text-align: center;*/
        font-size: 1.6em;
        color: #1a1a2e;
        margin-bottom: 15px;
        position: relative;
    }

    .container h2::after {
        content: '';
        display: block;
        width: 50px;
        height: 3px;
        /*background: #ff9800;*/
        margin: 8px auto 0;
        border-radius: 2px;
    }

    .container p {
        font-size: 1em;
        color: #333;
        margin-bottom: 10px;
        line-height: 1.5;
    }

    .container p strong {
        color: #1a1a2e;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .container {
            padding: 20px;
            max-width: 95%;
        }
    }
    </style>
    <title>Popup Example</title>
        <script type="text/javascript">
            // Function to show the popup
            function showPopup() {
                alert("This is a popup message!");
            }
        </script>
</head>
<body>
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

   <h1>Welcome to the Popup Page</h1>

       <%
           // Check if the 'showPopup' attribute is set to true
           Boolean showPopup = (Boolean) request.getAttribute("showPopup");
           if (showPopup != null && showPopup) {
       %>
           <script type="text/javascript">
               // Call the function to show the popup
               showPopup();
           </script>
       <%
           }
       %>

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


