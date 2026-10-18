<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="java.util.List" %>
<%@ page import="com.student.student.Student" %>
<%@ page import="com.student.dao.StudentDAO" %>
<%@ page import="com.student.dao.StudentInterface" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Marks List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            padding: 40px;
            margin: 0;
        }
        .container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 950px;
            margin: 0 auto;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        h2 {
            color: #333;
            margin: 0;
        }
        .btn {
            display: inline-block;
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
            font-weight: bold;
            transition: background-color 0.2s;
        }
        .btn:hover {
            background-color: #45a049;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            background-color: #fff;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #34495e;
            color: white;
            font-weight: bold;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
        .no-data {
            text-align: center;
            color: #7f8c8d;
            padding: 20px;
            font-style: italic;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="header">
        <h2>Student Marks Records</h2>
        <a href="index.jsp" class="btn">Add New Record</a>
    </div>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Student Name</th>
                <th>Physics</th>
                <th>Chemistry</th>
                <th>Mathematics</th>
                <th>Biology</th>
            </tr>
        </thead>
        <tbody>
            <% 
            StudentInterface stud = new StudentDAO();
            List<Student> studentList = stud.getStudent();
                
                if (studentList == null || studentList.isEmpty()) {
            %>
                <tr>
                    <td colspan="6" class="no-data">No student records found in the database.</td>
                </tr>
            <% 
                } else {
                    // Loop through the list using standard Java for-each
                    for (Student s : studentList) {
                        // Store the current student object in pageContext so standard EL can read it
                        pageContext.setAttribute("currentStudent", s);
            %>
                <tr>
                    <!-- Display data using pure Expression Language -->
                    <td>${currentStudent.id}</td>
                    <td>${currentStudent.name}</td>
                    <td>${currentStudent.physics}</td>
                    <td>${currentStudent.chemistry}</td>
                    <td>${currentStudent.mathematics}</td>
                    <td>${currentStudent.biology}</td>
                </tr>
            <% 
                    }
                }
            %>
        </tbody>
    </table>
</div>

</body>
</html>
