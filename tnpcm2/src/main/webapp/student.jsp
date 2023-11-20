<%@ page import="java.sql.Connection" %>
<%@ page import="com.db.DBConnect" %>
<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
<title>Companies Hiring Details Entry</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 20px;
	background-color: #f0f0f0;
}

.container {
	max-width: 800px;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	text-align: center;
}

form {
	display: flex;
	flex-direction: column;
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

input[type="submit"] {
	background-color: #0078d4;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	font-size: 18px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Student Information</h1>
		<form action="StudentServlet" method="post">
			<label for="companyName">Id</label> 
			<input type="number"id="companyName" name="Id" required> 
				<label for="jobTitle">Name</label>
			<input type="text" id="jobTitle" name="Name" required> <label
				for="jobDescription">Email </label><input type="text"
				id="companyName" name="Email" required> <label
				for="inputGender">Gender</label> <select class="select"
				id="exampleInputGender" name="Gender" required>
				<option selected>---Select---</option>
				<option value="Male">Male</option>
				<option value="Female">Female</option>
				<option value="Other">Other</option>
			</select> <label for="inputCourse">Course</label> <select class="select"
				id="exampleInputCourse" name="Course" required>
				<option selected>---Select---</option>
				<option value="CSE">CSE</option>
				<option value="ECE">ECE</option>
				<option value="EEE">EEE</option>
				<option value="Mechanical">Mechanical</option>
				<option value="Civil">Civil</option>
			</select> <label for="inputSpecialization">Specialization</label> <select
				class="select" id="exampleInputSpecialization" name="Specialization"
				required>
				<option selected>---Select---</option>
				<option value="AI&ML">AI&ML</option>
				<option value="Data Science">Data Science</option>
				<option value="Cloud-Tech">Cloud-Tech</option>
				<option value="Cyber-Security">Cyber-Security</option>
				<option value="Blockchain">Blockchain</option>
				<option value="Other">Other</option>
			</select> <label for="InputMobile No.">Mobile No.</label> <input type="number"
				id="exampleInputMobile No." name="Mobile" required> <input
				type="submit" value="Submit">
		</form>
	</div>
</body>
</html>