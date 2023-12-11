<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<style>
.book {
	width: 200px;
	height: 300px;
	border: 1px solid #ccc;
	padding: 10px;
	margin: 10px;
	background-color: #f7f7f7;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	position: relative;
	transition: all 0.3s ease;
	border-radius: 5px;
	overflow: hidden;
}

.book:before, .book:after {
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
	box-shadow: 0px 5px 15px 0px rgba(0, 0, 0, 0.3);
}

.book:hover:before, .book:hover:after {
	bottom: -40%;
}
</style>
<%@include file="repeat.jsp"%>
</head>
<body>
	<input type="hidden" id="status"
		value="<%=request.getAttribute("status")%>">
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
					<li class="nav-item active"><a class="nav-link"
						href="librarian_home.jsp"> <i class="fa-solid fa-house m-1"></i>Home
							<span class="sr-only">(current)</span>
					</a></li>

					



				</ul>

			</div>
		</nav>

		<table class="table table-striped mt-1">
			<thead >
				<tr class="bg-warning " >
					<th>Id</th>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Pages</th>
					<th scope="col">Edition</th>
					<th scope="col">Name</th>
					<th scope="col">Contact</th>
					<th scope="col">Address</th>
					<th scope="col">Issue Date</th>
					<th scope="col">Due Date</th>
				
					<th scope="col">Delete</th>
				</tr>
				<%
				Connection con;
				PreparedStatement pst;
				ResultSet rs;

				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost/registration", "root", "root");

				String query = "select * from issuebook";
				Statement st = con.createStatement();

				rs = st.executeQuery(query);

				while (rs.next()) {
					String id = rs.getString("id");
				%>

				<tr>
					<td><%=rs.getString("id")%></td>
					<td><%=rs.getString("book_name")%></td>
					<td><%=rs.getString("author")%></td>
					<td><%=rs.getString("price")%></td>
					<td><%=rs.getString("pages")%></td>
					<td><%=rs.getString("edition")%></td>
					<td><%=rs.getString("name")%></td>
					<td><%=rs.getString("contact")%></td>
					<td><%=rs.getString("address")%></td>
					<td><%=rs.getString("issuedate")%></td>
					<td><%=rs.getString("duedate")%></td>
					
					<td><a href="delete.jsp?id=<%=id%>">Delete</a></td>
				</tr>


				<%
				}
				%>


			</thead>
			

	</div>
	</div>

</body>
</html>