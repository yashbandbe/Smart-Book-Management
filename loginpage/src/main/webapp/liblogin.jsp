<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Page</title>
    
    <style> 
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 300px;
            max-width: 80%;
            text-align: center;
        }

        h1 {
            margin-bottom: 30px;
            color: #333;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 40px);
            margin: 10px 0;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #4CAF50;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            width: 100%;
            color: white;
            padding: 15px;
            margin: 10px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        label {
            text-align: left;
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="checkbox"] {
            margin-right: 5px;
        }

        .remember-me {
            color: #555;
        }
    </style> 
</head>
<%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
%>
    <p style="color: red;"><%= errorMessage %></p>
<%
    }
%>
<body>  
    <div class="login-container">
        <h1>Librarian Login</h1>
        <form action="liblogin_servlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" placeholder="Enter Username" name="username" required>
            <label for="password">Password:</label>
            <input type="password" id="password" placeholder="Enter Password" name="password" required>
            <button type="submit">Login</button>
            <label class="remember-me">
                <input type="checkbox" checked="checked"> Remember me
            </label>
        </form>
                <a href="main_home.jsp" onclick="history.back();" class="back-button">Back to Main Screen</a>
        
    </div>
</body>   
</html>
