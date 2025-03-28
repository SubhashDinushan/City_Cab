<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Register Employee</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            flex-direction: column;
            padding: 20px;
        }

        nav ul {
            list-style: none;
            background: #444;
            padding: 10px;
            text-align: center;
            width: 100%;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }

        nav ul li {
            margin: 10px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 100%;
            max-width: 400px;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input, select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .password-container {
            position: relative;
        }

        .password-container input {
            width: calc(100% - 40px);
            display: inline-block;
        }

        .toggle-password {
            position: absolute;
            right: 23px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            font-size: 18px;
        }

        .submit-btn {
            width: 100%;
            background: linear-gradient(135deg, #6e8efb, #a777e3);
            color: white;
            border: none;
            padding: 12px;
            font-size: 18px;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
            background: linear-gradient(135deg, #5b7bf9, #9558d8);
            transform: translateY(-2px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 20px;
            }
            input, select {
                font-size: 14px;
            }
            .submit-btn {
                font-size: 16px;
            }
        }

        @media (max-width: 480px) {
            nav ul {
                flex-direction: column;
                align-items: center;
            }
            nav ul li {
                margin: 5px 0;
            }
            .container {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<nav>
    <ul>
        <li><a href="adminPanel.jsp">Dashboard</a></li>
        <li><a href="#">Booking</a></li>
        <li><a href="RegisterEmployee.jsp">Add Employee</a></li>
        <li><a href="registerDriver.jsp">Add Driver</a></li>
        <li>
            <% if (session.getAttribute("user") != null) { %>
            <a href="logout" class="login-btn">Logout</a>
            <% } else { %>
            <a href="indexLogin.jsp" class="login-btn">Login</a>
            <% } %>
        </li>
    </ul>
</nav>

<div class="container">
    <h2>Register Admin / Employee</h2>

    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    <% if (errorMessage != null) { %>
    <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <form action="registerEmployee" method="POST" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="name">Employee Name</label>
            <input type="text" id="name" name="name" placeholder="Enter employee name" required>
        </div>

        <div class="form-group">
            <label for="nic">Employee NIC</label>
            <input type="text" id="nic" name="nic" placeholder="Enter employee NIC" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter employee email" required>
        </div>

        <div class="form-group">
            <label for="mobile">Mobile Number</label>
            <input type="tel" id="mobile" name="mobile" placeholder="Enter mobile number" required>
        </div>

        <div class="form-group">
            <label for="pwd">Password</label>
            <div class="password-container">
                <input type="password" id="pwd" name="pwd" placeholder="Must be at least 6 characters" required>
                <span class="toggle-password" onclick="togglePassword()">&#128065;</span>
            </div>
        </div>

        <div class="form-group">
            <label for="role">User Type</label>
            <select id="role" name="role" required>
                <option value="admin">Admin</option>
                <option value="employee">Employee</option>
            </select>
        </div>

        <button type="submit" class="submit-btn">Register</button>
    </form>
</div>
<script>
    // script.js
    function togglePassword() {
        let passwordField = document.getElementById("pwd");
        if (passwordField.type === "password") {
            passwordField.type = "text";
        } else {
            passwordField.type = "password";
        }
    }

    function validateForm() {
        let password = document.getElementById("pwd").value;

        if (password.length < 6) {
            alert("Password must be at least 6 characters.");
            return false;
        }
        return true;
    }

</script>
</body>
</html>


