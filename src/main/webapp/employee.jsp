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
