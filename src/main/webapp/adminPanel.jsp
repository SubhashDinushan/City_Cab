<%@ page import="java.util.List, org.citycab.model.Vehicle" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Add Vehicle</title>
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

        .admin-section {
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

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin: 10px 0 5px;
        }

        input {
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #28a745;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
            font-size: 16px;
        }

        button:hover {
            background-color: #218838;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: white;
        }
    </style>
</head>
<body>
<header>
    <h1>Admin Panel - Add Vehicle</h1>
</header>

<nav>
    <ul>
        <li><a href="#">Dashboard</a></li>
        <li><a href="#">Booking</a></li>
        <li><a href="RegisterEmployee.jsp">Add Employee</a></li>
        <li><a href="registerDriver.jsp">Add Driver</a></li>
        <li><a href="indexLogin.jsp">Login</a></li>
    </ul>
</nav>

<section class="admin-section">
    <h2>Add Vehicle</h2>
    <form method="post" enctype="multipart/form-data">
        <label for="vehicle-type">Vehicle Type:</label>
        <input type="text" id="vehicle-type" name="vehicle-type" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" required>

        <label for="driver-name">Driver Name:</label>
        <input type="text" id="driver-name" name="driver-name" required>

        <label for="vehicle-photo">Vehicle Photo:</label>
        <input type="file" id="vehicle-photo" name="vehicle-photo" accept="image/*" required>

        <button type="submit">Add Vehicle</button>
    </form>
</section>

<section class="admin-section">
    <h2>Vehicle List</h2>
    <table>
        <tr>
            <th>Vehicle Type</th>
            <th>Price</th>
            <th>Driver Name</th>
            <th>Vehicle Photo</th>
        </tr>
        <%
            List<Vehicle> vehicles = (List<Vehicle>) request.getAttribute("vehicles");
            if (vehicles != null) {
                for (Vehicle v : vehicles) {
        %>
        <tr>
            <td><%= v.getVehicleType() %></td>
            <td>$<%= v.getPrice() %></td>
            <td><%= v.getDriverName() %></td>
            <td><img src="<%= v.getVehiclePhoto() %>" alt="Vehicle Image" width="100"></td>
        </tr>
        <%
                }
            }
        %>
    </table>
</section>
</body>
</html>
