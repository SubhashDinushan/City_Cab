<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Register Drivers</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            padding: 20px;
        }

        nav ul {
            list-style: none;
            background: #444;
            padding: 10px;
            text-align: center;
            width: 100%;
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

        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 15px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
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

        /* Responsive Design */
        @media (max-width: 768px) {
            body {
                padding: 10px;
            }

            nav ul {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }

            nav ul li {
                display: block;
                margin: 10px 0;
            }

            .container {
                width: 90%;
                padding: 15px;
            }

            input {
                font-size: 14px;
                padding: 8px;
            }

            .submit-btn {
                font-size: 16px;
                padding: 10px;
            }
        }

        @media (max-width: 480px) {
            nav ul li a {
                font-size: 16px;
            }

            .container {
                width: 100%;
            }

            input {
                font-size: 14px;
                padding: 8px;
            }

            .submit-btn {
                font-size: 16px;
                padding: 10px;
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
            <a href="logout">Logout</a>
            <% } else { %>
            <a href="indexLogin.jsp">Login</a>
            <% } %>
        </li>
    </ul>
</nav>

<div class="container">
    <h2>Register Driver</h2>
    <form action="registerDriver" method="POST">
        <div class="form-group">
            <label for="name">Driver Name</label>
            <input type="text" id="name" name="name" placeholder="Enter Driver name" required>
        </div>

        <div class="form-group">
            <label for="nic">NIC</label>
            <input type="text" id="nic" name="nic" placeholder="Enter Driver NIC" required>
        </div>

        <div class="form-group">
            <label for="license">Driver License</label>
            <input type="text" id="license" name="license" placeholder="Enter Driver License" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter Driver email" required>
        </div>

        <div class="form-group">
            <label for="mobile">Mobile Number</label>
            <input type="tel" id="mobile" name="mobile" placeholder="Enter mobile number" required>
        </div>

        <div class="form-group">
            <label for="pwd">Password</label>
            <input type="text" id="pwd" name="pwd" placeholder="Enter the password" required>
        </div>

        <button type="submit" class="submit-btn">Register</button>
    </form>
</div>

</body>
</html>


