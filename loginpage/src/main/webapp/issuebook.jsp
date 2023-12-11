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
		<div class="container-fluid "
		style="height: 10px; background-color: #263238">
		<div class="container-fluid p-3 ">
			<div class="row">
				<div class="col-md-3">
					<h3>
						<i class="fa-solid fa-book"></i> SMART LIBRARY
					</h3>
				</div>
				<div class="col-md-6">
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success  my-2 my-sm-0"
							type="submit">Search</button>
					</form>
				</div>
				<div class="col-md-3">
					<a href="main_home.jsp" class="btn btn-success">Logout</a> 
						
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto  ">
					<li class="nav-item active"><a class="nav-link" href="studhome.jsp">
							<i class="fa-solid fa-house m-1"></i>Home <span class="sr-only">(current)</span>
					</a></li>
					
					

				</ul>

			</div>
		</nav>

		
		
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
                
     <form method="post" action="t2.jsp">
            <input type="hidden" name="bname" value="<%= resultSet.getString("bname") %>">
             <input type="hidden" name="bauth" value="<%= resultSet.getString("bauth") %>">
             <input type="hidden" name="bprice" value="<%= resultSet.getString("bprice") %>">
             <input type="hidden" name="bpage" value="<%= resultSet.getString("bpage") %>">
             <input type="hidden" name="bedi" value="<%= resultSet.getString("bedi") %>">
                        
            
            <button type="submit" name="deleteBtn" class="btn btn-danger btn-sm m-1">Issue Book</button>
            
            
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
<div class="bg"></div>
		<div class="container-fluid text-center text-white p-3 mt-2" style="background-color:#263238;">
<h5>@copyright</h5>
</div>

</body>
</html>
