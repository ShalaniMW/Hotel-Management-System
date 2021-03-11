<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="General.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.body{
background-image:url('Pictures/header1.jpg');
}
</style>
</head>
<body>
	
	
		<div class="header">
	<a href="#default" class="logo"><img src="Pictures/abc.png"></a><br>
 
  <div class="header-right">
  	 
  	<a class="active" href="http://localhost:8090/Test_1/homehome.jsp">My Profile</a>
  	<a class="active" href="#home">Customer</a>
    <a class="active" href="#home">Staff</a>
    <a class="active" href="http://localhost:8090/Test_1/reservationoptions.jsp">Hall</a>
    <a class="active" href="#home">Room</a>
    <a class="active" href="#home">Admin</a>
    <a class="active" href="#home">Feedback</a>
    <a class="active" href="#home">Recents</a>
    <a class="active" href="#home">Others</a>
    <a href="http://localhost:8090/Test_1/adminLogin.jsp">LOGOUT</a>

  </div>
</div>
<div class="body">
<br><br><br><br>


<form action="hallCheck" method="post">

<div class="content">

		<input type="text" placeholder="Hall ID" name="hallId" required><br>
		<input type="text" placeholder="Date"name="date" required><br>
		
		<button type="submit" name="submit">Check</button>
</div>

</form><br><br>
	</div>
</body>
</html>