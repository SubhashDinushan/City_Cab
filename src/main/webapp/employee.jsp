<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%--%>
<%--  // Session validation--%>
<%--  if (session.getAttribute("user") == null) {--%>
<%--    response.sendRedirect("indexLogin.jsp");--%>
<%--    return; // Stop further execution of the JSP--%>
<%--  }--%>
<%--%>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--  <meta charset="UTF-8">--%>
<%--  <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--  <title>Employee Panel</title>--%>
<%--  <style>--%>
<%--    * {--%>
<%--      margin: 0;--%>
<%--      padding: 0;--%>
<%--      box-sizing: border-box;--%>
<%--      font-family: 'Poppins', sans-serif;--%>
<%--    }--%>
<%--    body {--%>
<%--      background: linear-gradient(135deg, #f5f7fa, #c3cfe2);--%>
<%--      color: #333;--%>
<%--    }--%>
<%--    header {--%>
<%--      background: rgba(0, 0, 50, 0.9);--%>
<%--      color: white;--%>
<%--      padding: 15px;--%>
<%--      display: flex;--%>
<%--      justify-content: space-between;--%>
<%--      align-items: center;--%>
<%--    }--%>
<%--    .logo {--%>
<%--      font-size: 1.5em;--%>
<%--      font-weight: bold;--%>
<%--    }--%>
<%--    nav {--%>
<%--      display: flex;--%>
<%--      align-items: center;--%>
<%--      width: 100%;--%>
<%--      justify-content: space-between;--%>
<%--    }--%>

<%--    .login-btn {--%>
<%--      display: inline-block;--%>
<%--      padding: 8px 15px;--%>
<%--      font-size: 18px;--%>
<%--      font-weight: bold;--%>
<%--      color: white;--%>
<%--      background: linear-gradient(135deg, #6e8efb, #a777e3);--%>
<%--      border: none;--%>
<%--      border-radius: 8px;--%>
<%--      text-decoration: none;--%>
<%--      transition: all 0.3s ease-in-out;--%>
<%--      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);--%>
<%--    }--%>
<%--    .login-btn:hover {--%>
<%--      background: linear-gradient(135deg, #5b7bf9, #9558d8);--%>
<%--      transform: translateY(-2px);--%>
<%--      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.25);--%>
<%--    }--%>

<%--    nav ul {--%>
<%--      list-style: none;--%>
<%--      display: flex;--%>
<%--      flex-grow: 1;--%>
<%--      justify-content: center;--%>
<%--    }--%>
<%--    nav ul li {--%>
<%--      margin: 0 15px;--%>
<%--    }--%>
<%--    nav ul li a {--%>
<%--      color: white;--%>
<%--      text-decoration: none;--%>
<%--    }--%>
<%--    .login {--%>
<%--      background: #ff9800;--%>
<%--      border: none;--%>
<%--      padding: 8px 12px;--%>
<%--      cursor: pointer;--%>
<%--      border-radius: 5px;--%>
<%--      color: white;--%>
<%--      margin-left: auto;--%>
<%--    }--%>
<%--    .search-section {--%>
<%--      padding: 20px;--%>
<%--      text-align: center;--%>
<%--    }--%>
<%--    .search-box {--%>
<%--      background: rgba(255, 255, 255, 0.8);--%>
<%--      padding: 30px;--%>
<%--      border-radius: 10px;--%>
<%--      display: inline-block;--%>
<%--    }--%>
<%--    .search-box input, .search-box button {--%>
<%--      padding: 10px;--%>
<%--      margin: 5px;--%>
<%--      border-radius: 5px;--%>
<%--      border: 1px solid #ccc;--%>
<%--    ;--%>
<%--    }--%>
<%--    .search-btn {--%>
<%--      background: #ff5722;--%>
<%--      color: white;--%>
<%--      border: none;--%>
<%--      cursor: pointer;--%>
<%--    }--%>
<%--    .offers {--%>
<%--      display: flex;--%>
<%--      flex-wrap: wrap;--%>
<%--      justify-content: center;--%>
<%--      padding: 20px;--%>
<%--    }--%>
<%--    .offer-card {--%>
<%--      margin: 10px;--%>
<%--      text-align: center;--%>
<%--      background: white;--%>
<%--      padding: 10px;--%>
<%--      border-radius: 10px;--%>
<%--      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);--%>
<%--    }--%>
<%--    .offer-card img {--%>
<%--      width: 230px;--%>
<%--      height: 195px;--%>
<%--      border-radius: 5px;--%>
<%--    }--%>
<%--    footer {--%>
<%--      background: rgba(0, 0, 50, 0.9);--%>
<%--      color: white;--%>
<%--      padding: 75px;--%>
<%--      text-align: center;--%>
<%--    }--%>
<%--    .footer-content {--%>
<%--      display: flex;--%>
<%--      justify-content: space-around;--%>
<%--      flex-wrap: wrap;--%>
<%--    }--%>
<%--    @media (max-width: 768px) {--%>
<%--      nav ul {--%>
<%--        flex-direction: column;--%>
<%--        text-align: center;--%>
<%--      }--%>
<%--      .search-box {--%>
<%--        width: 100%;--%>
<%--      }--%>
<%--      .offers {--%>
<%--        flex-direction: column;--%>
<%--        align-items: center;--%>
<%--      }--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<header>--%>
<%--  <nav>--%>
<%--    <div class="logo">CityCab</div>--%>
<%--    <ul class="nav-menu">--%>
<%--      <li><a href="#">Home</a></li>--%>
<%--      <li><a href="#">Book</a></li>--%>
<%--      <li><a href="#">Offers</a></li>--%>
<%--      <li><a href="#">Help</a></li>--%>
<%--    </ul>--%>
<%--    <% if (session.getAttribute("user") != null) { %>--%>
<%--    <a href="logout">Logout</a>--%>
<%--    <% } else { %>--%>
<%--    <a href="indexLogin.jsp">Login</a>--%>
<%--    <% } %>--%>
<%--  </nav>--%>
<%--</header>--%>

<%--<section class="search-section">--%>
<%--  <div class="search-box">--%>
<%--    <input type="text" placeholder="Going from" id="from">--%>
<%--    <input type="text" placeholder="Going to" id="to">--%>
<%--    <label for="departure-date">Departure:</label>--%>
<%--    <input type="date" id="departure-date">--%>
<%--    <label for="return-date">Return:</label>--%>
<%--    <input type="date" id="return-date" disabled>--%>
<%--    <input type="number" placeholder="Passengers" id="passengers">--%>
<%--    <button class="search-btn">Search</button>--%>
<%--  </div>--%>
<%--</section>--%>

<%--<section class="offers">--%>
<%--  <div class="offer-card"> <img src="org/citycab/images/download.jpeg" alt="Offer 1">  </div>--%>
<%--  <div class="offer-card"> <img src="" alt="Offer 2">  </div>--%>
<%--  <div class="offer-card"> <img src="" alt="Offer 3">  </div>--%>
<%--</section>--%>

<%--<footer>--%>
<%--  <div class="footer-content">--%>
<%--    <div class="company"> <h4>Company</h4> <p>About us</p> </div>--%>
<%--    <div class="support"> <h4>Support</h4> <p>Hotels</p> <p>Baggage</p> </div>--%>
<%--    <div class="contact"> <h4>Contact</h4> <p>0741013044</p> <p>Subhash@gmail.com</p> </div>--%>
<%--  </div>--%>
<%--</footer>--%>

<%--<script>--%>
<%--  document.querySelector('.search-btn').addEventListener('click', function(e) {--%>
<%--    e.preventDefault();--%>

<%--    let from = document.getElementById('from').value;--%>
<%--    let to = document.getElementById('to').value;--%>
<%--    let departureDate = document.getElementById('departure-date').value;--%>
<%--    let passengers = document.getElementById('passengers').value;--%>

<%--    if (!from || !to || !departureDate || !passengers) {--%>
<%--      alert('Please fill in all required fields');--%>
<%--    } else {--%>
<%--      // Redirect to selectCar.html if validation passes--%>
<%--      window.location.href = "selectCarEmployee.jsp";--%>
<%--    }--%>
<%--  });--%>

<%--  // Enable return date selection only if departure date is selected--%>
<%--  document.getElementById('departure-date').addEventListener('change', function() {--%>
<%--    let returnDateInput = document.getElementById('return-date');--%>
<%--    returnDateInput.disabled = false;--%>
<%--    returnDateInput.min = this.value;--%>
<%--  });--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Employee Panel - CityCab</title>
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
    .search-container { display: flex; justify-content: center; padding: 50px; }
    .search-box { background: white; padding: 30px; border-radius: 15px; box-shadow: 0 6px 12px rgba(0,0,0,0.15); width: 480px; }
    .search-box input, .search-box button { width: 100%; padding: 14px; margin: 12px 0; border: 1px solid #ccc; border-radius: 8px; font-size: 16px; }
    .search-box input:focus { border-color: #0b0b54; outline: none; }
    .search-box button { background: #0b0b54; color: white; cursor: pointer; font-weight: bold; transition: 0.3s; border: none; }
    .search-box button:hover { background: #2626a6; }
    footer { background: #1a1a2e; color: white; padding: 30px 20px; text-align: center; box-shadow: 0 -4px 10px rgba(0, 0, 0, 0.2); }
    .footer-content { max-width: 1100px; margin: auto; }
    .footer-links { display: flex; justify-content: center; gap: 20px; margin-top: 10px; }
    .footer-links a { color: #ffcc00; text-decoration: none; transition: 0.3s; }
    .footer-links a:hover { color: white; }
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
      <li><a href="#">Help</a></li>
    </ul>
    <% if (session.getAttribute("user") != null) { %>
    <a href="logout" class="login-btn">Logout</a>
    <% } else { %>
    <a href="indexLogin.jsp" class="login-btn">Login</a>
    <% } %>
  </nav>
</header>

<!-- Search Box -->
<section class="search-container">
  <form action="selectCarEmployee.jsp" method="GET" class="search-box">
    <input type="text" placeholder="Going from" id="from" name="from" required>
    <input type="text" placeholder="Going to" id="to" name="to" required>
    <label for="departure-date">Departure:</label>
    <input type="date" id="departure-date" name="departureDate" required>
    <label for="return-date">Return:</label>
    <input type="date" id="return-date" name="returnDate">
    <input type="number" placeholder="Passengers" id="passengers" name="passengers" required>
    <button class="search-btn" type="submit">Search</button>
  </form>
</section>

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
