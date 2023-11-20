<%@ page import="java.sql.Connection" %>
<%@ page import="com.db.DBConnect" %>
<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <title>Companies Hiring Details Entry</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        textarea {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #0078d4;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Companies Hiring Details Entry</h1>
        <form action="CompaniesServlet" method="post">
            <label for="CompanyId">Company Id:</label>
            <input type="number" id="CompanyId" name="CompanyId" required>
             
            
            <label for="CompanyName">Company Name:</label>
            <input type="text" id="CompanyName" name="CompanyName" required>

            <label for="JobTitle">Job Title:</label>
            <input type="text" id="JobTitle" name="Title" required>

            <label for="JobDescription">Job Description:</label>
            <textarea id="JobDescription" name="Description" rows="4" required></textarea>

            <label for="Location">Location:</label>
            <input type="text" id="Location" name="Location" required>

            <label for="Salary">Salary:</label>
            <input type="number" id="Salary" name="Salary" required>

            <label for="ContactEmail">Contact Email:</label>
            <input type="email" id="ContactEmail" name="Email" required>

            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>