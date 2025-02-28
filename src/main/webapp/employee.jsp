<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Panel</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Poppins', sans-serif;
    }
    body {
      background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
      color: #333;
    }
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
    .search-section {
      padding: 20px;
      text-align: center;
    }
    .search-box {
      background: rgba(255, 255, 255, 0.8);
      padding: 30px;
      border-radius: 10px;
      display: inline-block;
    }
    .search-box input, .search-box button {
      padding: 10px;
      margin: 5px;
      border-radius: 5px;
      border: 1px solid #ccc;
    ;
    }
    .search-btn {
      background: #ff5722;
      color: white;
      border: none;
      cursor: pointer;
    }
    .offers {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      padding: 20px;
    }
    .offer-card {
      margin: 10px;
      text-align: center;
      background: white;
      padding: 10px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .offer-card img {
      width: 230px;
      height: 195px;
      border-radius: 5px;
    }
    footer {
      background: rgba(0, 0, 50, 0.9);
      color: white;
      padding: 75px;
      text-align: center;
    }
    .footer-content {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    @media (max-width: 768px) {
      nav ul {
        flex-direction: column;
        text-align: center;
      }
      .search-box {
        width: 100%;
      }
      .offers {
        flex-direction: column;
        align-items: center;
      }
    }
  </style>
</head>
<body>
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

<section class="search-section">
  <div class="search-box">
    <input type="text" placeholder="Going from" id="from">
    <input type="text" placeholder="Going to" id="to">
    <label for="departure-date">Departure:</label>
    <input type="date" id="departure-date">
    <label for="return-date">Return:</label>
    <input type="date" id="return-date" disabled>
    <input type="number" placeholder="Passengers" id="passengers">
    <button class="search-btn">Search</button>
  </div>
</section>

<section class="offers">
  <div class="offer-card"> <img src="org/citycab/images/download.jpeg" alt="Offer 1">  </div>
  <div class="offer-card"> <img src="" alt="Offer 2">  </div>
  <div class="offer-card"> <img src="" alt="Offer 3">  </div>
</section>

<footer>
  <div class="footer-content">
    <div class="company"> <h4>Company</h4> <p>About us</p> </div>
    <div class="support"> <h4>Support</h4> <p>Hotels</p> <p>Baggage</p> </div>
    <div class="contact"> <h4>Contact</h4> <p>0741013044</p> <p>Subhash@gmail.com</p> </div>
  </div>
</footer>

<script>
  document.querySelector('.search-btn').addEventListener('click', function(e) {
    e.preventDefault();

    let from = document.getElementById('from').value;
    let to = document.getElementById('to').value;
    let departureDate = document.getElementById('departure-date').value;
    let passengers = document.getElementById('passengers').value;

    if (!from || !to || !departureDate || !passengers) {
      alert('Please fill in all required fields');
    } else {
      // Redirect to selectCar.html if validation passes
      window.location.href = "selectCarEmployee.jsp";
    }
  });

  // Enable return date selection only if departure date is selected
  document.getElementById('departure-date').addEventListener('change', function() {
    let returnDateInput = document.getElementById('return-date');
    returnDateInput.disabled = false;
    returnDateInput.min = this.value;
  });
</script>
</body>
</html>