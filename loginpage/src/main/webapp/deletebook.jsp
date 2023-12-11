<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "registration";
String userId = "root";
String password = "root";

try {
    Class.forName(driverName);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
 <style>
        .book {
            width: 200px;
            height: 300px;
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            background-color: #f7f7f7;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            position: relative;
            transition: all 0.3s ease;
            border-radius: 5px;
            overflow: hidden;
        }

        .book:before,
        .book:after {
            content: "";
            position: absolute;
            width: 100%;
            height: 50%;
            background: linear-gradient(to bottom, #f7f7f7 0%, #ccc 100%);
            bottom: -50%;
            transform-origin: bottom center;
            z-index: -1;
            transition: all 0.3s ease;
            border-radius: 50%;
        }

        .book:before {
            left: -10%;
            transform: rotate(5deg);
        }

        .book:after {
            right: -10%;
            transform: rotate(-5deg);
        }

        .book-info {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 10px;
            background-color: #fff;
            border-radius: 0 0 5px 5px;
        }

        h3 {
            margin: 0;
            font-size: 18px;
        }

        p {
            margin-top: 5px;
            font-size: 14px;
        }

        .book-image {
            height: 70%;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f5f5f5;
        }

        .book-image img {
            max-width: 100%;
            max-height: 100%;
            object-fit: cover;
        }

        .book:hover {
            transform: translateY(-5px);
            box-shadow: 0px 5px 15px 0px rgba(0,0,0,0.3);
        }

        .book:hover:before,
        .book:hover:after {
            bottom: -40%;
        }
    </style>
    <%@include file="repeat.jsp"%>
</head>
<body>
   <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
		<%@include file="navbar.jsp"%>
	  <h2 align="center"><font><strong>Books List</strong></font></h2>
    <div align="center" style="display: flex; flex-wrap: wrap;">
        <%
        try {
            connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
            statement = connection.createStatement();
            String sql = "SELECT * FROM booksdata";

            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
        %>
        <div class="book">
        <div class="book-image">
        <img src="C:\Users\bandb\Downloads\loginpagezip\loginpage\src\main\webapp\Images\b2.jpg" alt="Book Cover" />
    </div>
            <div class="book-info">
                <h3><%= resultSet.getString("bname") %></h3>
                <p><strong>Author:</strong> <%= resultSet.getString("bauth") %></p>
                <p><strong>Price:</strong> <%= resultSet.getString("bprice") %></p>
                <p><strong>Pages:</strong> <%= resultSet.getString("bpage") %></p>
                <p><strong>Edition:</strong> <%= resultSet.getString("bedi") %></p>
                
     <form method="post" action="deleteAllBooks.jsp">
            <input type="hidden" name="bname" value="<%= resultSet.getString("bname") %>">
            <button type="submit" name="deleteBtn">Delete</button>
        </form>
                
           </div>
        </div>
        <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </div>


</body>
</html>