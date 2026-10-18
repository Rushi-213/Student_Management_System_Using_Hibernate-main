<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Marks Management System</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
        }

        h1 {
            color: #333333;
            font-size: 24px;
            text-align: center;
            margin-bottom: 24px;
            border-bottom: 2px solid #4CAF50;
            padding-bottom: 10px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 5px;
            color: #555555;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 4px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Student Marks Management System</h1>
    
    <form action="StudentServlet" method="POST">
        <div class="form-group">
            <label>Student Name</label>
            <input type="text" name="name"/>
        </div>
        
        <div class="form-group">
            <label>Physics</label>
            <input type="text" name="phy"/>
        </div>
        
        <div class="form-group">
            <label>Chemistry</label>
            <input type="text" name="chem"/>
        </div>
        
        <div class="form-group">
            <label>Mathematics</label>
            <input type="text" name="math"/>
        </div>
        
        <div class="form-group">
            <label>Biology</label>
            <input type="text" name="bio"/>
        </div>
        
        <input type="submit" value="Insert"/>
    </form>
</div>

</body>
</html>
