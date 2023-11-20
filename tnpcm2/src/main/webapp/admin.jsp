<%@page import="java.sql.Connection"%>
 <%@page import="com.db.DBConnect"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: orange;
            margin: 0px;
            padding: 20px;
            animation: backgroundAnimation 55s linear infinite;
        }
        @keyframes backgroundAnimation {
  0% {
    background-color: aqua;
  }\
  25% {
    background-color: blue;
  }
  50% {
    background-color: green;
  }
  75% {
    background-color: pink;
  }
  100% {
    background-color: orange;
  }
}

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            max-width: 1000px;

        }

        .box {
            width: 250px; 
            height: 70px; 
            background-color: palevioletred;
            text-align: center;
            text-decoration: blink;
            text-decoration-color: yellow;
            text-align: bottom;
            border: solid limegreen;
            border-width:10px;
            padding: 20px;
            margin: 10px;
            transform-style: preserve-3d;
            transition: transform 0.5s;
        }

        p {
            margin: 0;
        }

        .box:hover {
            transform: rotateY(15deg) scale(1.15);
            box-shadow: 15px 15px 20px rgba(0, 0, 0, 0.2);
            background-color: greenyellow;
        }

        header {
            text-align: center;
            background-color: navajowhite;
            color: black;
            padding: 8px;
           }

        footer {

            text-align: center;
            margin-top: 80px;
            

        }
    </style>
</head>
<body>
<% Connection Conn=DBConnect.getConn();
 System.out.print(Conn);%>
    <header>
        <h1>Training and Placement Cell Management</h1>
    </header>
    <h3> </h3>
    <div>
  
    
    <div class="container">
        <div class="box">
            <p><a href="Company.jsp"><h2>Company Entry</h2></a></p>
        </div>
        <div class="box">
            <p><a href="#"><h2>Training Institutes</h2></a></p>
        </div>
        <div class="box">
            <p><a href="#"><h2>Course Entry</h2></a></p>
        </div>
        <div class="box">
            <p><a href="student.jsp"><h2>Student Entry</h2></a></p>
        </div>
        <div class="box">
            <p><a href="#"><h2>Interns Scheduling</h2></a></p>
        </div>
        <div class="box">
            <p><a href="report.jsp"><h2>Generate Reports</h2></a></p>
        </div>
        <div class="box">
            <p><a href="about.jsp"><h2>About</h2></a></p>
        </div>
   
        </div>
        
    <footer>
        <p>&copy; 2023 My Web Page</p>
    </footer>
</div>
</body>
</html>