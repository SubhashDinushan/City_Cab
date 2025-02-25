<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Register Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 350px;
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
    </style>
</head>
<body>

<div class="container">
    <h2>Register Employee</h2>
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
            <label for="mobile">Password</label>
            <input type="text" id="pwd" name="pwd" placeholder="Enter the password" required>
        </div>
        <button type="submit" class="submit-btn">Register</button>
    </form>
</div>

</body>
</html>
