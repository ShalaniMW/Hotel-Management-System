<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="General.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.body{
background-image:url('Pictures/header2.jpg');
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
<br>

<form action="insert" method="post">
<fieldset>
<div class="content">

		<input type="text" name="cusId" placeholder="Customer ID"required><br>
		<input type="text" placeholder="Hall ID" name="hallId" required><br>
		<input type="text" placeholder="Date" name="date"required><br>
		<input type="text" placeholder="Function" name="function" required><br>
		<input type="text" placeholder="Time Duration" name="NoOfhrs"required><br>
		<input type="text" placeholder="Menu Type" name="menuType" required><br>
		<input type="text" placeholder="No Of Guests" name="NoOfguests"required><br>
		
		<button type="submit" name="submit">Add</button>
</div>
</fieldset>
</form>
<br>
</div>
</body>
</html>