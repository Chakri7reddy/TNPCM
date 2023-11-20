<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Training and Placement</title>
<style>
/* CSS Styles */
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 10px;
}
.cont{

	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 6px;
	margin-bottom:0px;
}

h1 {
	margin: 0;
}

nav {
	background-color: #444;
	color: #fff;
	text-align: center;
	padding: 10px;
}

nav a {
	text-decoration: none;
	color: #fff;
	margin: 10px;
}

.container {
	max-width: 1500px;
	margin: 0px ;
	padding: 0px;
	background-color: #fff;
	text-align: center;
}

main {
	width: 63%;
	height: 510px;
	margin: 10px 0px 0 6px;
	/* Adjust the values for top, right, bottom, and left as needed */
	padding: 0px; /* Add padding as needed */
	box-shadow: 0px 0px 3px gray;
	position: relative;
	overflow: hidden;
	float:left;
}
form {
    width: 35%;
    height: 250px; /* Change height to auto to allow for dynamic content */
    margin: 10px 7px 0 0px;
    padding: 0px;
    box-shadow: 0px 0px 3px gray;
    position: relative;
    overflow: hidden;
    float: right;
}
.op {
    max-width: 1500px;
    margin: 0px 0px opx 0px ;
    padding: 10px;
    background-color: #fff;
    text-align: center;
    clear: both; /* This will ensure content is placed below floated elements */
}

/* Image Styles */
.slide {
	height: 100%;
	width: 100%;
	transition: 1s;
	position: absolute;
	background-repeat: no-repeat;
	background-size: cover;
	position: absolute;
}

}
.nav {
	text-align: center;
	margin-top: 15px;
}

.nav button {
	font-size: 15px;
	padding: 5px;
	margin-top: 5px;
}
/* form label{
    
    margin:right; 
    padding: 1px;
    text-align: right; 
    width: 40%; 
}
form input {
    display:block;
    margin:center; 
    padding: 5px;
    text-align: right ; 
    width: 40%; 
}   */
input[type="text"]{
	margin-bottom: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}
input[type="text"]{
	
	margin-top: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	border-color:black;
	border-radius: 5px;
	font-size: 20px;
	text-align:center;
	

}
input[type="password"]{
	margin-bottom: 10px;
	padding: 10px;
	border: 1px solid #ccc;
	border-color:black;
	border-radius: 5px;
	font-size: 20px;
	text-align:center;
	margin-right:6px;

}
.lol{
text-align:right;
}


input[type="submit"] {
	background-color: #0078d4;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 18px;
	cursor: pointer;
	margin-left:80px;
}
/* Animation Styles */
 @keyframes float {
            0% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
            100% { transform: translateY(0); }
        }

        .floating-image {
            animation: float 2s infinite;
        } 

/* We can add our own CSS Style according to our wish */
</style>
</head>
<body>
	<header>
		<h1>Training and Placement</h1>
	</header>


	<div class="container">
		<!-- <h2>Welcome to our Training and Placement Program</h2> -->


		<main>
				<img class="slide" src="image/pl.jpg" alt="Your Image Description">
				<!--<img class="slide" src="image/op.jpg" alt="Your Image Description">
				<img class="slide" src="image/train.jpg" alt="Your Image Description">
				<img class="slide" src="image/tt.png" alt="Your Image Description">
			     <img class="slide" src="https://picsum.photos/id/279/200/300" alt="Image 1"> 
				<img class="slide" src="https://picsum.photos/id/237/200/300" alt="Image 1"> 
				<img class="slide" src="https://picsum.photos/id/237/200/300" alt="Image 1"> 
				<img class="slide" src="https://picsum.photos/id/237/200/300" alt="Image 1"> -->
		</main>
		
		<form action="admin.jsp" method="post">
		<h2>Admin Login</h2>
			<label for="jobDescription">Email </label><input class="form-control" type="text"
				id="companyName" name="Email" required>
			<div class=class-row>
			<label
				for="jobDescription">Password </label><input type="password"
				id="password" class="form-control" name="password" required>
			</div>	
			<a class="lol" href="">Forgot Password ?</a>
				
				<input
				type="submit" value="Login" >
				
				</form>
				
			<form action="studentprofile.jsp" method="post">
		<h2>Student Login</h2>
			<label for="jobDescription">Email </label><input class="form-control" type="text"
				id="companyName" name="Email" required>
			<div class=class-row>
			<label
				for="jobDescription">Password </label><input class="form-control" type="password"
				id="password" name="password" required>
			</div>	<a class="lol" href="">Forgot Password ?</a>
				
				<input
				type="submit" value="Login" >
				
				</form>


			<!-- <div class="nav">
			<button onclick="goPrev()">Prev</button>
			<button onclick="goNext()">Next</button>

		</div> -->
			<script src="app.js"></script>


		<div class="op">	<h1>About Us</h1>
			<p>We offer a wide range of courses and help you find the right
				placement opportunity, where we empower you with the knowledge and
				skills needed to succeed in your career. Our mission is to connect
				talented individuals like you with exciting job opportunities,
				ensuring that you are well-prepared to face the challenges of the
				professional world. With a wide range of courses and expert
				guidance, we're here to help you shape your future. </p>
		</div>

			<div class="floating-image">
				<!-- <img class="image" src="image/pl.jpg" alt="Image 1">
         -->
			</div>

			<div class="floating-image"></div>

			<!-- Add more content here -->
	</div>

	<footer>
		<div class="cont">&copy; 2023 Training and Placement</div>
	</footer>

	<script>
		// JavaScript code can be added here
		// For example, you can handle form submissions or add interactivity.
	</script>
</body>
</html>
