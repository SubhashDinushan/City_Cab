<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
        }
        .button {
            padding: 5px 10px;
            margin: 2px;
            border: none;
            cursor: pointer;
            color: white;
            border-radius: 4px;
        }
        .update {
            background-color: #4CAF50;
        }
        .delete {
            background-color: #f44336;
        }
        .home {
            background-color: #008CBA;
            padding: 10px 20px;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<h1>Registration Successful!</h1>

<h2>Admins</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>NIC</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="admin" items="${admins}">
        <tr>
            <td>${admin[0]}</td>
            <td>${admin[1]}</td>
            <td>${admin[2]}</td>
            <td>${admin[3]}</td>
            <td>${admin[4]}</td>
            <td>
                <button class="button update" onclick="updateUser('${admin[0]}')">Update</button>
                <button class="button delete" onclick="deleteUser('${admin[0]}')">Delete</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h2>Employees</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>NIC</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee[0]}</td>
            <td>${employee[1]}</td>
            <td>${employee[2]}</td>
            <td>${employee[3]}</td>
            <td>${employee[4]}</td>
            <td>
                <button class="button update" onclick="updateUser('${employee[0]}')">Update</button>
                <button class="button delete" onclick="deleteUser('${employee[0]}')">Delete</button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="adminPanel.jsp" class="button home">Home</a>

<script>
    function updateUser(empId) {
        window.location.href = "updateEmployee.jsp?empId=" + empId;
    }

    function deleteUser(empId) {
        if (confirm("Are you sure you want to delete this user?")) {
            window.location.href = "deleteEmployee?empId=" + empId;
        }
    }
</script>
</body>
</html>