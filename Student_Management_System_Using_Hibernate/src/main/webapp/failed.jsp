<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
        }
        h1 {
            color: #e74c3c;
            margin-bottom: 10px;
        }
        p {
            color: #555555;
            font-size: 16px;
            line-height: 1.5;
        }
        .button-group {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.2s;
        }
        .btn-home {
            background-color: #3498db;
        }
        .btn-home:hover {
            background-color: #2980b9;
        }
        .btn-view {
            background-color: #2ecc71;
        }
        .btn-view:hover {
            background-color: #27ae60;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Failed!</h1>
        <p>An error occurred while saving the student details to the database via Hibernate. Please try again.</p>
        <div class="button-group">
            <a href="index.jsp" class="btn btn-home">Go Back to Home</a>
            <!-- <a href="viewStudents.jsp" class="btn btn-view">View Data</a> -->
        </div>
    </div>
</body>
</html>
