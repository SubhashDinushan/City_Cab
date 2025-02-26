<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.citycab.model.Vehicle" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Vehicle</title>
    <style>
        /* Add your existing CSS styles here */
    </style>
</head>
<body>
<header>
    <h1>Update Vehicle</h1>
</header>

<section class="admin-section">
    <h2>Update Vehicle Details</h2>
    <form method="post" enctype="multipart/form-data" action="update-vehicle">
        <!-- Hidden input field for vehicleId -->
        <input type="hidden" name="vehicleId" value="${vehicle.vehicleId}">

        <label for="vehicle-type">Vehicle Type:</label>
        <input type="text" id="vehicle-type" name="vehicle-type" value="${vehicle.vehicleType}" required>

        <label for="price">Price:</label>
        <input type="number" id="price" name="price" value="${vehicle.price}" required>

        <label for="driver-name">Driver Name:</label>
        <input type="text" id="driver-name" name="driver-name" value="${vehicle.driverName}" required>

        <label for="vehicle-photo">Vehicle Photo:</label>
        <input type="file" id="vehicle-photo" name="vehicle-photo" accept="image/*">

        <button type="submit">Update Vehicle</button>
    </form>
</section>
</body>
</html>