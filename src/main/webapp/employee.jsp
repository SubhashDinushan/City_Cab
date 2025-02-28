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
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    header {
      background-color: #333;
      color: white;
      padding: 15px;
      text-align: center;
      font-size: 24px;
    }

    nav ul {
      list-style: none;
      background: #444;
      padding: 10px;
      text-align: center;
    }

    nav ul li {
      display: inline;
      margin: 0 15px;
    }

    nav ul li a {
      color: white;
      text-decoration: none;
      font-size: 18px;
    }

    .employee-section {
      background: white;
      margin: 20px auto;
      padding: 20px;
      width: 80%;
      border-radius: 8px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
      text-align: center;
    }
  </style>
</head>
<body>
<header>
  <h1>Employee Panel</h1>
</header>

<nav>
  <ul>
    <li><a href="#">Dashboard</a></li>
    <li><a href="#">Booking</a></li>
    <li>
      <% if (session.getAttribute("user") != null) { %>
      <a href="logout">Logout</a>
      <% } else { %>
      <a href="indexLogin.jsp">Login</a>
      <% } %>
    </li>
  </ul>
</nav>

<section class="employee-section">
  <h2>Welcome, Employee!</h2>
  <p>This is the employee panel.</p>
</section>
</body>
</html>