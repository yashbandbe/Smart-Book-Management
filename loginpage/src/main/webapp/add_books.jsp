<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<%@include file="repeat.jsp"%>


</head>
<body>
	<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
		<%@include file="navbar.jsp"%>
	<div class="main">
	
	
	
	

	<div class="container">
		<div class="container">
    <div class="row">
        <div class="col-md-6">
						<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
					
						<h2 class="form-title">Add Books</h2>

						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i class="fa-solid fa-book"></i></label> <input
									type="text" name="name" id="name" placeholder="book Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="fa-solid fa-pen-nib"></i></label> <input
									type="text" name="author" id="author" placeholder="book author" />
							</div>
							<div class="form-group">
								<label for="price"><i class="fa-solid fa-sack-dollar"></i></label> <input
									type="text" name="price" id="price" placeholder="price" />
							</div>
							<div class="form-group">
								<label for="NO of pages"><i class="fa-solid fa-book-open"></i></label>
								<input type="text" name="pages" id="pages"
									placeholder="No of pages" />
							</div>
							<div class="form-group">
								<label for="Book edition"><i class="fa-solid fa-wand-magic-sparkles"></i></label>
								<input type="text" name="edition" id="edition"
									placeholder="Book edition" />
							</div>
							
							<div class="form-group">
	 		                <label for="fileupload"><i class="fa-solid fa-camera"></i></label>
	 		                <input type="file" name="image" required ><br>
	 	                    </div>
		
						
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit btn btn-warning " value="Add Book" />
							</div>
							
						</form>
					</div>
				
				</div>
			</div>
		</section>
					
 </div>
        <div class="col-md-6">
            <!-- Add an image on the right side -->
            <img src="https://media.istockphoto.com/id/514781014/vector/cute-school-girl-carrying-big-pile-of-books.jpg?s=612x612&w=0&k=20&c=aKJiTl3AaMgVT07Q7tUWqPKPVfbRFXj7zgeih9jCtkg=" alt="Library Image" class="library-image">
                   
        
        </div>
    </div>
</div>
					</div>
				</a>
			</div>


	
			
			
		</div>
	</div>
	

	

	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "success"){
		swal("Congrats", "Book Added Successfully", "success");
		}
	</script>



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>