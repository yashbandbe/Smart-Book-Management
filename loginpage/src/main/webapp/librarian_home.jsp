<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<meta charset="UTF-8">
<title>Librarian : Home</title>
<%@include file="repeat.jsp"%>

<style type="text/css">
a {
	text-decoration: none;
	color: black
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
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
					<a href="main_home.jsp" class="btn btn-success ">Logout</a> 
						
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
					<li class="nav-item active"><a class="nav-link" href="librarian_home.jsp">
							<i class="fa-solid fa-house m-1"></i>Home <span class="sr-only">(current)</span>
					</a></li>
					
				</ul>

			</div>
		</nav>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
							<h4>Add Books</h4>
							--------------
						</div>

					</div>
				</a>
			</div>


			<div class="col-md-3">
			<a href="viewbook.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-book fa-3x" style="color: green;"></i>
<br>
						<h4>View Books</h4>
						--------------
					</div>

				</div>
				</a>
			</div>


			<div class="col-md-3">
			<a href="deletebook.jsp">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-trash-alt fa-3x" style="color: red;"></i>

<br>
						<h4>Delete Books</h4>
						--------------
					</div>

				</div>
				</a>
			</div>


			<div class="col-md-3">
			
			
				<div class="card">
					<div class="card-body text-center">
					
						<i class="fa-solid fa-box fa-3x text-warning"></i></i><br>
						<h4><a href="view_order.jsp">Orders</a></h4>
						--------------
					</div>

				</div>
			</div>
			
			
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>