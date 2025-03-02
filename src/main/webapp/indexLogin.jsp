<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Login Panel</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            height: 100vh;--%>
<%--            background-color: #f4f4f4;--%>
<%--        }--%>
<%--        .login-container {--%>
<%--            background: white;--%>
<%--            padding: 20px;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--        input, select, button {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            margin: 10px 0;--%>
<%--            border: 1px solid #ccc;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>
<%--        button {--%>
<%--            background-color: #28a745;--%>
<%--            color: white;--%>
<%--            cursor: pointer;--%>
<%--        }--%>
<%--        button:hover {--%>
<%--            background-color: #218838;--%>
<%--        }--%>
<%--        .error-message {--%>
<%--            color: red;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="login-container">--%>
<%--    <h2>Login</h2>--%>
<%--    &lt;%&ndash; Display error message if login fails &ndash;%&gt;--%>
<%--    <div class="error-message">--%>
<%--        ${errorMessage}--%>
<%--    </div>--%>

<%--    <form action="login" method="post">--%>
<%--        <select name="role">--%>
<%--            <option value="admin">Admin</option>--%>
<%--            <option value="employee">Employee</option>--%>
<%--        </select>--%>
<%--        <input type="text" name="email" placeholder="Email" required>--%>
<%--        <input type="password" name="password" placeholder="Password" required>--%>
<%--        <button type="submit">Login</button>--%>
<%--    </form>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>



<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Panel</title>
    <style>
        /* styles.css */
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
        }

        .login-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input, select, button {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            background-color: #28a745;
            color: white;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        button:hover {
            background-color: #218838;
        }

        .error-message {
            color: red;
            margin-bottom: 10px;
        }

    </style>
</head>
<body>
<div class="login-container">
    <h2>Login</h2>
    <div class="error-message">
        ${errorMessage}
    </div>
    <form action="login" method="post" onsubmit="return validateForm()">
        <select name="role" id="role">
            <option value="admin">Admin</option>
            <option value="employee">Employee</option>
        </select>
        <input type="text" name="email" id="email" placeholder="Email" required>
        <input type="password" name="password" id="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
</div>
<script>
    // script.js
    function validateForm() {
        let email = document.getElementById("email").value;
        let password = document.getElementById("password").value;
        let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (password.length < 6) {
            alert("Password must be at least 6 characters.");
            return false;
        }

        return true;
    }
    // script.js
    function validateForm() {
        let email = document.getElementById("email").value;
        let password = document.getElementById("password").value;
        let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address.");
            return false;
        }

        if (password.length < 6) {
            alert("Password must be at least 6 characters.");
            return false;
        }

        return true;
    }

</script>
</body>
</html>
