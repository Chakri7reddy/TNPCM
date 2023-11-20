<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
	background-color: #f0f0f0;
}

.container {
	max-width: 800px;
	margin: auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

form {
	width: 100%;
	margin: 50px 25px 0 0px;
	box-shadow: 0px 0px 0px 0px black;
	position: relative;
	overflow: hidden;
	display: flex;
	flex-direction: column;
}
#editButton{
background-color: #17a2b8;
	border: 2px solid #fff;
	border-width: 2px;
	border-radius: 10px;
	color: white;
	font-size: 17px;
	padding: 10px 20px;
	text-align: center;

}
#saveButton{
background-color: #17a2b8;
	border: 2px solid #fff;
	border-width: 2px;
	border-radius: 10px;
	color: white;
	font-size: 17px;
	padding: 10px 20px;
	text-align: center;

}
label {
	font-weight: bold;
}

input[type="text"], input[type="email"], input[type="number"], .select {
	margin-bottom: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

input[type="file"] {
	margin-bottom: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

#pm {
	background-color: #17a2b8;
	border: 2px solid #fff;
	border-width: 2px;
	border-radius: 10px;
	color: white;
	font-size: 17px;
	padding: 10px 20px;
	text-align: center;
}


button[type="submit"] {
	border: 10px;
	border-radius: 20px;
	/* Set a specific radius to create rounded corners */
	background-color: #2949ef;
	margin: auto;
	color: white;
	padding: 5px 10px; /* Adjust padding for button size */
	font-size: 16px;
	text-align: center;
	cursor: pointer;
	width: 150px;
}

/* Add hover effect if desired */
button[type="submit"]:hover {
	background-color: blue;
}

h1 {
	text-align: center;
}

.navbar-brand {
	text-align: center;
}
</style>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<nav
					class="navbar navbar-expand bg-info navbar-dark navbar-fixed-top ">
					<a class="navbar-brand" href="index"><h1>Student Profile</h1></a>
					<div class="col-md-8"></div>
					<a href="" id="pm" class="navbar-brand ">Logout</a>
				</nav>
			</div>
		</div>

	</div>
	<hr width="100%" size="100" color="black" noshade>
	<div>
		<form>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputname">Name</label> <input type="text"
						class="form-control" id="inputname" placeholder="">

				</div>

				<div class="form-group col-md-6">
					<label for="inputid">ID</label> <input type="number"
						class="form-control" id="inputid" placeholder="">
				</div>

				<div class="form-group col-md-6">
					<label for="inputEmail4">Email</label> <input type="email"
						class="form-control" id="inputEmail4" placeholder="">
				</div>

				<div class="form-group col-md-6" id ="ok">
					<label for="inputMobile" >Mobile</label>
					<div class="input-group">
						<input type="number" class="form-control" id="inputMobile"
							placeholder=""> 
							<button class="btn btn-secondary" id="editButton">Edit</button>
        <button class="btn btn-primary" id="saveButton" style="">Save</button>
					</div>
					
				</div>


				<div class="form-group col-md-6">
					<label for="inputcourse">Course</label> <input type="text"
						class="form-control" id="inputcourse" placeholder="">

				</div>
				
					<div class="form-group col-md-6">
					<label for="inputEmail4">Resume</label> <input type="file"
						class="form-control" id="inputEmail4" placeholder="">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword4">C.V.</label> <input type="file"
						class="form-control" id="inputPassword4" placeholder="">
				</div>


				<div class="form-group col-md-6">
					<label for="inputCity">Graduate Certificate</label> <input
						type="file" class="form-control" id="inputCity">
				</div>
				<div class="form-group col-md-6">
					<label for="inputState">Internship Certificate</label> <input
						type="file" id="file" class="form-control">

				</div>
				<div class="form-group col-md-6">
					<label for="inputEmail4">HighSchool Certificate</label> <input
						type="file" class="form-control" id="inputEmail4" placeholder="">
				</div>
				<div class="form-group col-md-6">
					<label for="">Intermediate Certificate</label> <input type="file"
						class="form-control" id="" placeholder="">
				</div>
				<div class="form-group col-md-6">
					<label for="inputEmail4">Other Certificate</label> <input
						type="file" class="form-control" id="inputEmail4" placeholder="">
				</div>
				<div class="form-group col-md-6">
					<label for="inputEmail4">Projects</label> <input type="file"
						class="form-control" id="inputEmail4" placeholder="">
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form>

	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>