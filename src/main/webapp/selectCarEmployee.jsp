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
    <!-- <link rel="stylesheet" href="../css/selectCar.css" /> -->
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            background: #f2f2f2;
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

        /* Search Section */
        .search-section {
            padding: 40px;
            background: white;
        }
        .search-box {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
        }
        .search-box h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-box form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .search-box input,
        .search-box button {
            padding: 10px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .search-box input:disabled {
            background: #e9ecef;
        }
        .search-box button {
            background: #1a1a2e;
            color: white;
            border: none;
            cursor: pointer;
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
            display: flex;
            flex-direction: column;
            gap: 30px;
        }
        .booking-summary,
        .vehicle-options {
            background: white;
            padding: 20px;
            border-radius: 10px;
        }
        .booking-summary h2,
        .vehicle-options h2 {
            margin-bottom: 15px;
        }
        .summary-details p {
            margin-bottom: 10px;
        }

        /* Vehicle Options */
        .vehicles {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: space-around;
        }
        .vehicle-card {
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            width: calc(20% - 20px);
            text-align: center;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .vehicle-card img {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 10px;
        }
        .vehicle-card h3 {
            margin-bottom: 10px;
        }
        .vehicle-card button {
            background: #0b0b54;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
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
            .vehicles {
                flex-direction: column;
                align-items: center;
            }
            .vehicle-card {
                width: 80%;
            }
        }

    </style>
</head>
<body>
<!-- Header & Navigation -->
<header>

    <nav>
        <div class="logo">CityCab</div>
        <!-- <button class="menu-toggle">☰</button> -->
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
        </li>
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
        </div>
    </div>
    <div class="vehicle-options">
        <h2>Select a Vehicle</h2>
        <div class="vehicles">
            <div class="vehicle-card">
                <img src="../images/download.jpeg"alt="Vehicle 1" />
                <h3>RS 6000 <p>(par day)</p></h3>
                <p>Prius/pertol</p>
                <p>AC 4 setes</p>
                <p>Subhash Dinushan</p>
                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>
            </div>
            <div class="vehicle-card">
                <img src="../images/download.jpeg" alt="Vehicle 2" />
                <h3>RS 6000 <p>(par day)</p></h3>
                <p>Prius/pertol</p>
                <p>AC 4 setes</p>
                <p>Subhash Dinushan</p>
                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>
            </div>
            <div class="vehicle-card">
                <img src="../images/download.jpeg"alt="Vehicle 3" />
                <h3>RS 6000 <p>(par day)</p></h3>
                <p>Prius/pertol</p>
                <p>AC 4 setes</p>
                <p>Subhash Dinushan</p>
                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>
            </div>
            <div class="vehicle-card">
                <img src="../images/download.jpeg" alt="Vehicle 4" />
                <h3>RS 6000 <p>(par day)</p></h3>
                <p>Prius/pertol</p>
                <p>AC 4 setes</p>
                <p>Subhash Dinushan</p>
                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>
            </div>
            <div class="vehicle-card">
                <img src="../images/download.jpeg" alt="Vehicle 5" />
                <h3>RS 6000 <p>(par day)</p></h3>
                <p>Prius/pertol</p>
                <p>AC 4 setes</p>
                <p>Subhash Dinushan</p>
                <a href="addCustomerEmployee.jsp"><button>Book Now</button></a>
            </div>
        </div>
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
