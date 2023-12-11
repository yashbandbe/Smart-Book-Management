<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
<link rel="stylesheet" text="text/css" href="about.css">
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
					<li class="nav-item active"><a class="nav-link" href="main_home.jsp">
							<i class="fa-solid fa-house m-1"></i>Home <span class="sr-only">(current)</span>
					</a></li>
					
					

				</ul>

			</div>
		</nav>
	<div class="section">
		<div class="container">
			<div class="content-section">
				<div class="title">
					<h1>About Us</h1>
				</div>
				<div class="content">
					<h3>Library Management System</h3>
					<p>A library management system is software that is designed to
						manage all the functions of a library. It helps librarian to
						maintain the database of new books and the books that are borrowed
						by members along with their due dates. This system completely
						automates all your library’s activities. The best way to maintain,
						organize, and handle countless books systematically is to
						implement a library management system software. A library
						management system is used to maintain library records. It tracks
						the records of the number of books in the library, how many books
						are issued etc. The purpose of a library management system is to
						provide instant and accurate data regarding any type of book,
						thereby saving a lot of time and effort.</p>

					<div class="footer-col">
						<h4>follow us</h4>
						<div class="social-links">
							<a href="#"><img src="Images/facebook.png" alt=" "></a> <a
								href="#"><img src="Images/instagram.png" alt=" "></a> <a
								href="#"><img src="Images/twitter.png" alt=" "></a> <a
								href="#"><img src="Images/youtube.png"></a>
						</div>

					</div>
					<div class="image-section">
						<img src="Images/about1.jpg" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>