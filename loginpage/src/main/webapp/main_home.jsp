<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Home</title>
<%@include file="repeat.jsp"%>

<style type="text/css">
.admins img {
	height: 36px;
	margin: -3px;
}

.admin2 img {
	height: 40px;
	margin: -3px;
	margin-left: -3px;
}

.bg {
	background-image: url('Images/new3.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	padding: 0 5%;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: flex-start;
	color: #424144;
	height: 100vh;
	flex-wrap: wrap;
	align-content: flex-end;
}

.collapse.navbar-collapse ul.navbar-nav.mr-auto
{
   margin-left:410px;
}

</style>

</head>
<body>
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
					<a href="" class="btn btn-success">Login</a> <a href=""
						class="btn btn-primary">Register</a>
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
					<li class="nav-item active"><a class="nav-link" href="#">
							<i class="fa-solid fa-house m-1"></i>Home <span class="sr-only">(current)</span>
					</a></li>
					
					<li class="nav-item active"><a class="nav-link" href="about.jsp"><i class="fa-solid fa-circle-info m-1"></i>About</a></li>
							
					<li class="nav-item active"><a class="nav-link" href="contact.jsp"><i class="fa-solid fa-phone-volume m-1"></i>
							Contact</a></li>

					<li class="nav-item active"><a class="nav-link" href="liblogin.jsp">
					
					
							<div class="admins">
								<img src="Images/l1.png" alt=" ">
							</div>
					</a></li>
					<li class="nav-item active"><a class="nav-link" href="login.jsp">

							<div class="admin2">
								<img src="Images/user.png" alt=" ">
							</div>
					</a></li>

				</ul>

			</div>
		</nav>

		<div class="bg"></div>
		<div class="container-fluid text-center text-white p-3 mt-2" style="background-color:#263238;">
<h5>@copyright</h5>
</div>

</body>
</html>