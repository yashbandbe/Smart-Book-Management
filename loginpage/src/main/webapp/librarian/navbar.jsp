<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid " style="height:10px;background-color:#263238">
	<div class="container-fluid p-3 ">
		<div class="row">
			<div class="col-md-3">
				<h3>
				<i class="fa-solid fa-book"></i>
				SMART LIBRARY
				</h3>
			</div>
			<div class="col-md-6">
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success  my-2 my-sm-0" type="submit">Search</button>
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

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="librarian_home.jsp"> <i
						class="fa-solid fa-house m-1"></i>Home 
						<span class="sr-only">(current)</span>
				</a></li>
			
			</ul>
			<form class="form-inline my-2 my-lg-0">
				
			</form>
		</div>
	</nav>
</body>
</html>