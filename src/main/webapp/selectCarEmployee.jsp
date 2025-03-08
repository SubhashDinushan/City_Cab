<%--<%--%>
<%--    // Session validation--%>
<%--    if (session.getAttribute("user") == null) {--%>
<%--        response.sendRedirect("indexLogin.jsp");--%>
<%--        return;--%>
<%--    }--%>

<%--    // Retrieve user search input from URL parameters--%>
<%--    String from = request.getParameter("from");--%>
<%--    String to = request.getParameter("to");--%>
<%--    String departureDate = request.getParameter("departureDate");--%>
<%--    String returnDate = request.getParameter("returnDate");--%>
<%--    String passengers = request.getParameter("passengers");--%>

<%--    // Default values if not provided (to avoid null issues)--%>
<%--    if (from == null) from = "N/A";--%>
<%--    if (to == null) to = "N/A";--%>
<%--    if (departureDate == null) departureDate = "N/A";--%>
<%--    if (returnDate == null || returnDate.isEmpty()) returnDate = "One-way trip";--%>
<%--    if (passengers == null) passengers = "N/A";--%>
<%--%>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <title>CityCab Booking</title>--%>
<%--    <style>--%>
<%--        /* Basic Styling */--%>
<%--        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }--%>
<%--        body { background: #f2f2f2; color: #333; }--%>
<%--        header { background: rgba(0, 0, 50, 0.9); color: white; padding: 15px; display: flex; justify-content: space-between; align-items: center; }--%>
<%--        .logo { font-size: 1.5em; font-weight: bold; }--%>
<%--        /* Navigation Bar Styling */--%>
<%--        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Poppins', sans-serif; }--%>
<%--        body { background: #f2f2f2; color: #333; }--%>
<%--        header { background: rgba(0, 0, 50, 0.9); color: white; padding: 15px; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); }--%>
<%--        .logo { font-size: 1.8em; font-weight: bold; letter-spacing: 1px; }--%>
<%--        nav { display: flex; align-items: center; width: 100%; justify-content: space-between; }--%>
<%--        nav ul { list-style: none; display: flex; flex-grow: 1; justify-content: center; }--%>
<%--        nav ul li { margin: 0 20px; }--%>
<%--        nav ul li a { color: white; text-decoration: none; font-weight: 500; transition: 0.3s; }--%>
<%--        nav ul li a:hover { color: #ffd700; }--%>
<%--        .login-btn { background: #ffcc00; color: #000; padding: 10px 20px; border-radius: 8px; text-decoration: none; font-weight: bold; transition: 0.3s; }--%>
<%--        .login-btn:hover { background: #ffdd44; }--%>
<%--        .search-section { padding: 40px; background: white; text-align: center; }--%>
<%--        .booking-summary {--%>
<%--            max-width: 600px;--%>
<%--            margin: auto;--%>
<%--            padding: 30px;--%>
<%--            border-radius: 15px;--%>
<%--            background: linear-gradient(135deg, #ffffff 0%, #f7f7f7 100%);--%>
<%--            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);--%>
<%--            text-align: left;--%>
<%--        }--%>

<%--        .booking-summary h2 {--%>
<%--            margin-bottom: 20px;--%>
<%--            font-size: 1.1em;--%>
<%--            color: #0b0b54;--%>
<%--            text-transform: uppercase;--%>
<%--            letter-spacing: 1px;--%>
<%--        }--%>

<%--        .summary-details p {--%>
<%--            margin-bottom: 15px;--%>
<%--            font-size: 1.0em;--%>
<%--            color: #000000;--%>
<%--            font-weight: 600; /* Slightly bolder text */--%>
<%--        }--%>

<%--        .summary-details strong {--%>
<%--            font-weight: bold;--%>
<%--            color: #0b0b54;--%>
<%--        }--%>

<%--        .booking-summary .summary-details {--%>
<%--            padding-left: 20px;--%>
<%--            border-left: 4px solid #0b0b54;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>

<%--        /* Add a subtle hover effect to the summary */--%>
<%--        .booking-summary:hover {--%>
<%--            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);--%>
<%--            transform: translateY(-5px);--%>
<%--            transition: box-shadow 0.3s ease, transform 0.3s ease;--%>
<%--        }--%>

<%--        .vehicle-options { text-align: center; margin-top: 20px; }--%>
<%--        .vehicle-card { background: white; padding: 15px; border-radius: 10px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); display: inline-block; margin: 10px; width: 250px; }--%>
<%--        .vehicle-card img { width: 100%; height: auto; border-radius: 5px; }--%>
<%--        .vehicle-card button { background: #0b0b54; color: white; border: none; padding: 8px 16px; border-radius: 5px; cursor: pointer; }--%>
<%--        footer { background: #1a1a2e; color: white; padding: 20px; text-align: center; }--%>
<%--        .footer-content { max-width: 1100px; margin: auto; }--%>
<%--        .footer-links { display: flex; justify-content: center; gap: 20px; margin-top: 10px; }--%>
<%--        .footer-links a { color: #ffcc00; text-decoration: none; transition: 0.3s; }--%>
<%--        .footer-links a:hover { color: white; }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<!-- Navigation Bar -->--%>
<%--<header>--%>
<%--    <nav>--%>
<%--        <div class="logo">CityCab</div>--%>
<%--        <ul class="nav-menu">--%>
<%--            <li><a href="employee.jsp">Home</a></li>--%>
<%--            <li><a href="#">Book</a></li>--%>
<%--            <li><a href="#">Offers</a></li>--%>
<%--            <li><a href="#">Help</a></li>--%>
<%--        </ul>--%>
<%--        <% if (session.getAttribute("user") != null) { %>--%>
<%--        <a href="logout" class="login-btn">Logout</a>--%>
<%--        <% } else { %>--%>
<%--        <a href="indexLogin.jsp" class="login-btn">Login</a>--%>
<%--        <% } %>--%>
<%--    </nav>--%>
<%--</header>--%>

<%--<!-- Booking Summary -->--%>
<%--<section class="search-section">--%>
<%--    <div class="booking-summary">--%>
<%--        <h2>Booking Summary</h2>--%>
<%--        <div class="summary-details">--%>
<%--            <p><strong>From:</strong> <%= from %></p>--%>
<%--            <p><strong>To:</strong> <%= to %></p>--%>
<%--            <p><strong>Departure:</strong> <%= departureDate %></p>--%>
<%--            <p><strong>Return:</strong> <%= returnDate %></p>--%>
<%--            <p><strong>Passengers:</strong> <%= passengers %></p>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<!-- Vehicle Options -->--%>
<%--<section class="vehicle-options">--%>
<%--    <h2>Select a Vehicle</h2>--%>
<%--    <div class="vehicles">--%>
<%--        <div class="vehicle-card">--%>
<%--            <img src="../images/download.jpeg" alt="Vehicle 1" />--%>
<%--            <h3>RS 6000 <p>(per day)</p></h3>--%>
<%--            <p>Prius</p>--%>
<%--            <p>Driver: Subhash Dinushan</p>--%>
<%--            <a href="addCustomerEmployee.jsp?from=<%= from %>&to=<%= to %>&departureDate=<%= departureDate %>&returnDate=<%= returnDate %>&passengers=<%= passengers %>">--%>
<%--                <button>Book Now</button>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<!-- Footer -->--%>
<%--<footer>--%>
<%--    <div class="footer-content">--%>
<%--        <p>CityCab &copy; 2025</p>--%>
<%--        <p>Contact us: subhashdinushan.w@gmail.com | Phone: +94 741013044</p>--%>
<%--        <div class="footer-links">--%>
<%--            <a href="#">Privacy Policy</a>--%>
<%--            <a href="#">Terms of Service</a>--%>
<%--            <a href="#">Careers</a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page import="org.citycab.model.Vehicle" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Select a Vehicle - CityCab</title>
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
        .vehicle-card img { width: 60%; height: 50%; border-radius: 5px; }
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

<%
    List<Vehicle> vehicles = (List<Vehicle>) application.getAttribute("vehicles");
%>

<!-- Vehicle Options -->
<section class="vehicle-options">
    <h2>Select a Vehicle</h2>
    <div class="vehicles">
        <% if (vehicles != null && !vehicles.isEmpty()) { %>
        <% for (Vehicle vehicle : vehicles) { %>
        <div class="vehicle-card">
            <img src="<%= request.getContextPath() + "/" + vehicle.getVehiclePhoto() %>" alt="<%= vehicle.getVehicleType() %>" />
            <h3>RS <%= vehicle.getPrice() %> <p>(per day)</p></h3>
            <p><%= vehicle.getVehicleType() %></p>
            <p>Driver: <%= vehicle.getDriverName() %></p>
<%--            <a href="addCustomerEmployee.jsp?from=<%= from %>&to=<%= to %>&departureDate=<%= departureDate %>&returnDate=<%= returnDate %>&passengers=<%= passengers %>&vehicle=<%= vehicle.getVehicleType() %>&price=<%= vehicle.getPrice() %>&driver=<%= vehicle.getDriverName() %>">--%>
<%--                <button>Book Now</button>--%>
<%--            </a>--%>
            <a href="addCustomerEmployee.jsp?from=<%= from %>
    &to=<%= to %>
    &departureDate=<%= departureDate %>
    &returnDate=<%= returnDate %>
    &passengers=<%= passengers %>
    &vehicle=<%= vehicle.getVehicleType() %>
    &price=<%= vehicle.getPrice() %>
    &driver=<%= java.net.URLEncoder.encode(vehicle.getDriverName(), "UTF-8") %>">
                <button>Book Now</button>
            </a>



        </div>
        <% } %>
        <% } else { %>
        <p>No vehicles available at the moment.</p>
        <% } %>
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



