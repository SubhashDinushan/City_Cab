<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            text-align: center;
        }

        header {
            background-color: #333;
            color: white;
            padding: 15px;
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

        .container {
            margin-top: 50px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 60%;
            margin-left: auto;
            margin-right: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #333;
            color: white;
        }

        .action-btn {
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }

        .delete-btn {
            background-color: red;
            color: white;
        }

        .update-btn {
            background-color: blue;
            color: white;
        }
    </style>
</head>
<body>
<header>
    <h1>Registration Successful</h1>
</header>

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
    <h2>Registration Successful!</h2>
    <p>The employee/admin has been registered successfully.</p>

    <!-- Display Admins -->
    <h3>Registered Admins</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>NIC</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Actions</th>
        </tr>
        <%
            List<String[]> admins = (List<String[]>) request.getAttribute("admins");
            if (admins != null) {
                for (String[] admin : admins) {
        %>
        <tr>
            <td><%= admin[0] %></td>
            <td><%= admin[1] %></td>
            <td><%= admin[2] %></td>
            <td><%= admin[3] %></td>
            <td><%= admin[4] %></td>
            <td>
                <form action="DeleteEmployeeServlet" method="post" style="display:inline;">
                    <input type="hidden" name="empId" value="<%= admin[0] %>">
                    <button type="submit" class="action-btn delete-btn">Delete</button>
                </form>
                <form action="UpdateEmployee.jsp" method="get" style="display:inline;">
                    <input type="hidden" name="empId" value="<%= admin[0] %>">
                    <button type="submit" class="action-btn update-btn">Update</button>
                </form>
            </td>
        </tr>
        <% }
        } %>
    </table>

    <!-- Display Employees -->
    <h3>Registered Employees</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>NIC</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Actions</th>
        </tr>
        <%
            List<String[]> employees = (List<String[]>) request.getAttribute("employees");
            if (employees != null) {
                for (String[] employee : employees) {
        %>
        <tr>
            <td><%= employee[0] %></td>
            <td><%= employee[1] %></td>
            <td><%= employee[2] %></td>
            <td><%= employee[3] %></td>
            <td><%= employee[4] %></td>
            <td>
                <form action="DeleteEmployeeServlet" method="post" style="display:inline;">
                    <input type="hidden" name="empId" value="<%= employee[0] %>">
                    <button type="submit" class="action-btn delete-btn">Delete</button>
                </form>
                <form action="UpdateEmployee.jsp" method="get" style="display:inline;">
                    <input type="hidden" name="empId" value="<%= employee[0] %>">
                    <button type="submit" class="action-btn update-btn">Update</button>
                </form>
            </td>
        </tr>
        <% }
        } %>
    </table>
</div>
</body>
</html>
