<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.citycab.dao.VehicleDAO, org.citycab.model.Vehicle" %>


<%
    int vehicleId = Integer.parseInt(request.getParameter("id"));
    VehicleDAO vehicleDAO = new VehicleDAO();
    Vehicle vehicle = vehicleDAO.getVehicleById(vehicleId);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Vehicle</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
        }

        header {
            background-color: #007bff;
            color: white;
            text-align: center;
            padding: 1rem;
            font-size: 1.5rem;
        }

        .admin-section {
            max-width: 600px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #007bff;
        }

        /* Form Styling */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        input {
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1rem;
        }

        button {
            margin-top: 15px;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .admin-section {
                width: 90%;
                padding: 15px;
            }

            input, button {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
<header>
    <h1>Update Vehicle</h1>
</header>

<section class="admin-section">
    <h2>Update Vehicle</h2>
    <form action="updateVehicle" method="post">
        <input type="hidden" name="vehicleId" value="<%= vehicle.getVehicleId() %>">

        <label for="vehicle-type">Vehicle Type:</label>
        <input type="text" id="vehicle-type" name="vehicle-type" value="<%= vehicle.getVehicleType() %>" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" value="<%= vehicle.getPrice() %>" required>

        <label for="driver-name">Driver Name:</label>
        <input type="text" id="driver-name" name="driver-name" value="<%= vehicle.getDriverName() %>" required>

        <label for="vehicle-photo">Vehicle Photo:</label>
        <input type="text" id="vehicle-photo" name="vehicle-photo" value="<%= vehicle.getVehiclePhoto() %>" required>

        <button type="submit">Update Vehicle</button>
    </form>
</section>
</body>
</html>