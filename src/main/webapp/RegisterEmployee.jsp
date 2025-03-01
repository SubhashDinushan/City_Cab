<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Admin Panel - Register Employee</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background-color: #f4f4f4;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            height: 100vh;--%>
<%--        }--%>


<%--        .container {--%>
<%--            background: white;--%>
<%--            padding: 20px;--%>
<%--            border-radius: 8px;--%>
<%--            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);--%>
<%--            width: 350px;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        h2 {--%>
<%--            margin-bottom: 15px;--%>
<%--            color: #333;--%>
<%--        }--%>

<%--        .error-message {--%>
<%--            background: #ff4d4d;--%>
<%--            color: white;--%>
<%--            padding: 10px;--%>
<%--            border-radius: 5px;--%>
<%--            margin-bottom: 15px;--%>
<%--            font-size: 14px;--%>
<%--            font-weight: bold;--%>
<%--            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .form-group {--%>
<%--            margin-bottom: 15px;--%>
<%--            text-align: left;--%>
<%--        }--%>

<%--        label {--%>
<%--            font-weight: bold;--%>
<%--            display: block;--%>
<%--            margin-bottom: 5px;--%>
<%--        }--%>

<%--        input, select {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--            font-size: 16px;--%>
<%--        }--%>

<%--        .submit-btn {--%>
<%--            width: 100%;--%>
<%--            background: linear-gradient(135deg, #6e8efb, #a777e3);--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            padding: 12px;--%>
<%--            font-size: 18px;--%>
<%--            border-radius: 6px;--%>
<%--            cursor: pointer;--%>
<%--            transition: 0.3s;--%>
<%--        }--%>

<%--        .submit-btn:hover {--%>
<%--            background: linear-gradient(135deg, #5b7bf9, #9558d8);--%>
<%--            transform: translateY(-2px);--%>
<%--            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>


<%--<div class="container">--%>
<%--    <h2>Register Admin / Employee</h2>--%>

<%--    &lt;%&ndash; Display styled error message if it exists &ndash;%&gt;--%>
<%--    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>--%>
<%--    <% if (errorMessage != null) { %>--%>
<%--    <div class="error-message"><%= errorMessage %></div>--%>
<%--    <% } %>--%>

<%--    <form action="registerEmployee" method="POST">--%>
<%--        <div class="form-group">--%>
<%--            <label for="name">Employee Name</label>--%>
<%--            <input type="text" id="name" name="name" placeholder="Enter employee name" required>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="nic">Employee NIC</label>--%>
<%--            <input type="text" id="nic" name="nic" placeholder="Enter employee NIC" required>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="email">Email</label>--%>
<%--            <input type="email" id="email" name="email" placeholder="Enter employee email" required>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="mobile">Mobile Number</label>--%>
<%--            <input type="tel" id="mobile" name="mobile" placeholder="Enter mobile number" required>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="pwd">Password</label>--%>
<%--            <input type="password" id="pwd" name="pwd" placeholder="Enter the password" required>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="role">User Type</label>--%>
<%--            <select id="role" name="role" required>--%>
<%--                <option value="admin">Admin</option>--%>
<%--                <option value="employee">Employee</option>--%>
<%--            </select>--%>
<%--        </div>--%>

<%--        <button type="submit" class="submit-btn">Register</button>--%>
<%--    </form>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Register Employee</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
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
            margin-top: 20px;
        }

        h2 {
            margin-bottom: 15px;
            color: #333;
        }

        .error-message {
            background: #ff4d4d;
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 14px;
            font-weight: bold;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            text-align: center;
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

        input, select {
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

            input, select {
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

            input, select {
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
    <h2>Register Admin / Employee</h2>

    <%-- Display styled error message if it exists --%>
    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    <% if (errorMessage != null) { %>
    <div class="error-message"><%= errorMessage %></div>
    <% } %>

    <form action="registerEmployee" method="POST">
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
            <input type="password" id="pwd" name="pwd" placeholder="Enter the password" required>
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

</body>
</html>


