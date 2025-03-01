<%--<%--%>
<%--    // Session validation--%>
<%--    if (session.getAttribute("user") == null) {--%>
<%--        response.sendRedirect("indexLogin.jsp");--%>
<%--        return; // Stop further execution of the JSP--%>
<%--    }--%>
<%--%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8" />--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1" />--%>
<%--    <title>CityCab Booking</title>--%>
<%--    <!-- <link rel="stylesheet" href="../css/selectCar.css" /> -->--%>
<%--    <style>--%>
<%--        /* Global Styles */--%>
<%--        * {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            box-sizing: border-box;--%>
<%--            font-family: 'Poppins', sans-serif;--%>
<%--        }--%>
<%--        body {--%>
<%--            background: #f2f2f2;--%>
<%--            color: #333;--%>
<%--        }--%>

<%--        /* Header & Navigation */--%>
<%--        header {--%>
<%--            background: rgba(0, 0, 50, 0.9);--%>
<%--            color: white;--%>
<%--            padding: 15px;--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--            align-items: center;--%>
<%--        }--%>
<%--        .logo {--%>
<%--            font-size: 1.5em;--%>
<%--            font-weight: bold;--%>
<%--        }--%>
<%--        nav {--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            width: 100%;--%>
<%--            justify-content: space-between;--%>
<%--        }--%>
<%--        nav ul {--%>
<%--            list-style: none;--%>
<%--            display: flex;--%>
<%--            flex-grow: 1;--%>
<%--            justify-content: center;--%>
<%--        }--%>
<%--        nav ul li {--%>
<%--            margin: 0 15px;--%>
<%--        }--%>
<%--        nav ul li a {--%>
<%--            color: white;--%>
<%--            text-decoration: none;--%>
<%--        }--%>
<%--        .login {--%>
<%--            background: #ff9800;--%>
<%--            border: none;--%>
<%--            padding: 8px 12px;--%>
<%--            cursor: pointer;--%>
<%--            border-radius: 5px;--%>
<%--            color: white;--%>
<%--            margin-left: auto;--%>
<%--        }--%>

<%--        /* Search Section */--%>
<%--        .search-section {--%>
<%--            padding: 40px;--%>
<%--            background: white;--%>
<%--        }--%>
<%--        .search-box {--%>
<%--            max-width: 600px;--%>
<%--            margin: 0 auto;--%>
<%--            padding: 20px;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 10px;--%>
<%--        }--%>
<%--        .search-box h2 {--%>
<%--            text-align: center;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>
<%--        .search-box form {--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            gap: 15px;--%>
<%--        }--%>
<%--        .search-box input,--%>
<%--        .search-box button {--%>
<%--            padding: 10px;--%>
<%--            font-size: 1em;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>
<%--        .search-box input:disabled {--%>
<%--            background: #e9ecef;--%>
<%--        }--%>
<%--        .search-box button {--%>
<%--            background: #1a1a2e;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            cursor: pointer;--%>
<%--        }--%>


<%--        .login-btn {--%>
<%--            display: inline-block;--%>
<%--            padding: 8px 15px;--%>
<%--            font-size: 18px;--%>
<%--            font-weight: bold;--%>
<%--            color: white;--%>
<%--            background: linear-gradient(135deg, #6e8efb, #a777e3);--%>
<%--            border: none;--%>
<%--            border-radius: 8px;--%>
<%--            text-decoration: none;--%>
<%--            transition: all 0.3s ease-in-out;--%>
<%--            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);--%>
<%--        }--%>
<%--        .login-btn:hover {--%>
<%--            background: linear-gradient(135deg, #5b7bf9, #9558d8);--%>
<%--            transform: translateY(-2px);--%>
<%--            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.25);--%>
<%--        }--%>

<%--        /* Booking Section */--%>
<%--        .booking-section {--%>
<%--            padding: 40px;--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            gap: 30px;--%>
<%--        }--%>
<%--        .booking-summary,--%>
<%--        .vehicle-options {--%>
<%--            background: white;--%>
<%--            padding: 20px;--%>
<%--            border-radius: 10px;--%>
<%--        }--%>
<%--        .booking-summary h2,--%>
<%--        .vehicle-options h2 {--%>
<%--            margin-bottom: 15px;--%>
<%--        }--%>
<%--        .summary-details p {--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>

<%--        /* Vehicle Options */--%>
<%--        .vehicles {--%>
<%--            display: flex;--%>
<%--            flex-wrap: wrap;--%>
<%--            gap: 20px;--%>
<%--            justify-content: space-around;--%>
<%--        }--%>
<%--        .vehicle-card {--%>
<%--            background: #fff;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 10px;--%>
<%--            width: calc(20% - 20px);--%>
<%--            text-align: center;--%>
<%--            padding: 10px;--%>
<%--            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>
<%--        .vehicle-card img {--%>
<%--            width: 100%;--%>
<%--            height: auto;--%>
<%--            border-radius: 10px;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        .vehicle-card h3 {--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--        .vehicle-card button {--%>
<%--            background: #0b0b54;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            padding: 8px 16px;--%>
<%--            border-radius: 5px;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--        /* Footer */--%>
<%--        footer {--%>
<%--            background: #1a1a2e;--%>
<%--            color: white;--%>
<%--            padding: 20px;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        .footer-content {--%>
<%--            display: flex;--%>
<%--            flex-wrap: wrap;--%>
<%--            justify-content: space-around;--%>
<%--            gap: 20px;--%>
<%--        }--%>
<%--        .footer-content div h4 {--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>

<%--        /* Responsive Styles */--%>
<%--        @media (max-width: 768px) {--%>
<%--            .nav-menu {--%>
<%--                flex-direction: column;--%>
<%--                gap: 10px;--%>
<%--            }--%>
<%--            .vehicles {--%>
<%--                flex-direction: column;--%>
<%--                align-items: center;--%>
<%--            }--%>
<%--            .vehicle-card {--%>
<%--                width: 80%;--%>
<%--            }--%>
<%--        }--%>

<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<!-- Header & Navigation -->--%>
<%--<header>--%>

<%--    <nav>--%>
<%--        <div class="logo">CityCab</div>--%>
<%--        <!-- <button class="menu-toggle">☰</button> -->--%>
<%--        <ul class="nav-menu">--%>
<%--            <li><a href="#">Home</a></li>--%>
<%--            <li><a href="#">Book</a></li>--%>
<%--            <li><a href="#">Offers</a></li>--%>
<%--            <li><a href="#">Help</a></li>--%>
<%--        </ul>--%>

<%--        <% if (session.getAttribute("user") != null) { %>--%>
<%--        <a href="logout">Logout</a>--%>
<%--        <% } else { %>--%>
<%--        <a href="indexLogin.jsp">Login</a>--%>
<%--        <% } %>--%>
<%--        </li>--%>
<%--    </nav>--%>
<%--</header>--%>


<%--<!-- Booking Section (Static Display) -->--%>
<%--<section class="booking-section">--%>
<%--    <div class="booking-summary">--%>
<%--        <h2>Booking Summary</h2>--%>
<%--        <div class="summary-details">--%>
<%--            <p><strong>From:</strong> City A</p>--%>
<%--            <p><strong>To:</strong> City B</p>--%>
<%--            <p><strong>Departure:</strong> 2025-02-10</p>--%>
<%--            <p><strong>Return:</strong> 2025-02-15</p>--%>
<%--            <p><strong>Passengers:</strong> 5</p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="vehicle-options">--%>
<%--        <h2>Select a Vehicle</h2>--%>
<%--        <div class="vehicles">--%>
<%--            <div class="vehicle-card">--%>
<%--                <img src="../images/download.jpeg"alt="Vehicle 1" />--%>
<%--                <h3>RS 6000 <p>(par day)</p></h3>--%>
<%--                <p>Prius/pertol</p>--%>
<%--                <p>AC 4 setes</p>--%>
<%--                <p>Subhash Dinushan</p>--%>
<%--                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>--%>
<%--            </div>--%>
<%--            <div class="vehicle-card">--%>
<%--                <img src="../images/download.jpeg" alt="Vehicle 2" />--%>
<%--                <h3>RS 6000 <p>(par day)</p></h3>--%>
<%--                <p>Prius/pertol</p>--%>
<%--                <p>AC 4 setes</p>--%>
<%--                <p>Subhash Dinushan</p>--%>
<%--                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>--%>
<%--            </div>--%>
<%--            <div class="vehicle-card">--%>
<%--                <img src="../images/download.jpeg"alt="Vehicle 3" />--%>
<%--                <h3>RS 6000 <p>(par day)</p></h3>--%>
<%--                <p>Prius/pertol</p>--%>
<%--                <p>AC 4 setes</p>--%>
<%--                <p>Subhash Dinushan</p>--%>
<%--                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>--%>
<%--            </div>--%>
<%--            <div class="vehicle-card">--%>
<%--                <img src="../images/download.jpeg" alt="Vehicle 4" />--%>
<%--                <h3>RS 6000 <p>(par day)</p></h3>--%>
<%--                <p>Prius/pertol</p>--%>
<%--                <p>AC 4 setes</p>--%>
<%--                <p>Subhash Dinushan</p>--%>
<%--                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>--%>
<%--            </div>--%>
<%--            <div class="vehicle-card">--%>
<%--                <img src="../images/download.jpeg" alt="Vehicle 5" />--%>
<%--                <h3>RS 6000 <p>(par day)</p></h3>--%>
<%--                <p>Prius/pertol</p>--%>
<%--                <p>AC 4 setes</p>--%>
<%--                <p>Subhash Dinushan</p>--%>
<%--                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<!-- Footer -->--%>
<%--<footer>--%>
<%--    <div class="footer-content">--%>
<%--        <div class="company">--%>
<%--            <h4>Company</h4>--%>
<%--            <p>About us</p>--%>
<%--        </div>--%>
<%--        <div class="support">--%>
<%--            <h4>Support</h4>--%>
<%--            <p>Hotels</p>--%>
<%--            <p>Baggage</p>--%>
<%--        </div>--%>
<%--        <div class="contact">--%>
<%--            <h4>Contact</h4>--%>
<%--            <p>0741013044</p>--%>
<%--            <p>Subhash@gmail.com</p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>
<%--</body>--%>
<%--</html>--%>


<%
    // Session validation
    if (session.getAttribute("user") == null) {
        response.sendRedirect("indexLogin.jsp");
        return;
    }

    // Retrieve user search input from URL parameters
    String from = request.getParameter("from");
    String to = request.getParameter("to");
    String departureDate = request.getParameter("departureDate");
    String returnDate = request.getParameter("returnDate");
    String passengers = request.getParameter("passengers");

    // Default values if not provided (to avoid null issues)
    if (from == null) from = "N/A";
    if (to == null) to = "N/A";
    if (departureDate == null) departureDate = "N/A";
    if (returnDate == null || returnDate.isEmpty()) returnDate = "One-way trip";
    if (passengers == null) passengers = "N/A";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CityCab Booking</title>
    <style>
        /* Basic Styling */
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }
        body { background: #f2f2f2; color: #333; }
        header { background: rgba(0, 0, 50, 0.9); color: white; padding: 15px; display: flex; justify-content: space-between; align-items: center; }
        .logo { font-size: 1.5em; font-weight: bold; }
        /* Navigation Bar Styling */
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
        .search-section { padding: 40px; background: white; text-align: center; }
        .booking-summary {
            max-width: 600px;
            margin: auto;
            padding: 30px;
            border-radius: 15px;
            background: linear-gradient(135deg, #ffffff 0%, #f7f7f7 100%);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

        .booking-summary h2 {
            margin-bottom: 20px;
            font-size: 1.1em;
            color: #0b0b54;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .summary-details p {
            margin-bottom: 15px;
            font-size: 1.0em;
            color: #000000;
            font-weight: 600; /* Slightly bolder text */
        }

        .summary-details strong {
            font-weight: bold;
            color: #0b0b54;
        }

        .booking-summary .summary-details {
            padding-left: 20px;
            border-left: 4px solid #0b0b54;
            margin-bottom: 20px;
        }

        /* Add a subtle hover effect to the summary */
        .booking-summary:hover {
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            transform: translateY(-5px);
            transition: box-shadow 0.3s ease, transform 0.3s ease;
        }

        .vehicle-options { text-align: center; margin-top: 20px; }
        .vehicle-card { background: white; padding: 15px; border-radius: 10px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); display: inline-block; margin: 10px; width: 250px; }
        .vehicle-card img { width: 100%; height: auto; border-radius: 5px; }
        .vehicle-card button { background: #0b0b54; color: white; border: none; padding: 8px 16px; border-radius: 5px; cursor: pointer; }
        footer { background: #1a1a2e; color: white; padding: 20px; text-align: center; }
        .footer-content { max-width: 1100px; margin: auto; }
        .footer-links { display: flex; justify-content: center; gap: 20px; margin-top: 10px; }
        .footer-links a { color: #ffcc00; text-decoration: none; transition: 0.3s; }
        .footer-links a:hover { color: white; }
    </style>
</head>
<body>

<!-- Navigation Bar -->
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

<!-- Booking Summary -->
<section class="search-section">
    <div class="booking-summary">
        <h2>Booking Summary</h2>
        <div class="summary-details">
            <p><strong>From:</strong> <%= from %></p>
            <p><strong>To:</strong> <%= to %></p>
            <p><strong>Departure:</strong> <%= departureDate %></p>
            <p><strong>Return:</strong> <%= returnDate %></p>
            <p><strong>Passengers:</strong> <%= passengers %></p>
        </div>
    </div>
</section>

<!-- Vehicle Options -->
<section class="vehicle-options">
    <h2>Select a Vehicle</h2>
    <div class="vehicles">
        <div class="vehicle-card">
            <img src="../images/download.jpeg" alt="Vehicle 1" />
            <h3>RS 6000 <p>(per day)</p></h3>
            <p>Prius / Petrol</p>
            <p>Driver: Subhash Dinushan</p>
            <a href="addCustomerEmployee.jsp?from=<%= from %>&to=<%= to %>&departureDate=<%= departureDate %>&returnDate=<%= returnDate %>&passengers=<%= passengers %>">
                <button>Book Now</button>
            </a>
        </div>
        <div class="vehicle-card">
            <img src="../images/download.jpeg" alt="Vehicle 2" />
            <h3>RS 8000 <p>(per day)</p></h3>
            <p>SUV / Diesel</p>
            <p>AC, 6 seats</p>
            <p>Driver: John Doe</p>
            <a href="addCustomerEmployee.jsp?from=<%= from %>&to=<%= to %>&departureDate=<%= departureDate %>&returnDate=<%= returnDate %>&passengers=<%= passengers %>">
                <button>Book Now</button>
            </a>
        </div>
    </div>
</section>

<!-- Footer -->
<footer>
    <div class="footer-content">
        <p>CityCab &copy; 2025</p>
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


