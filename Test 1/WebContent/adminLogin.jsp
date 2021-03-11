<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="General.css">
<meta charset="ISO-8859-1">
<title>Hotel Reservation System</title>
<style>
.body{
background-image:url('Pictures/header1.jpg');
}
</style>
</head>
<body>
<div class="body">
	<br><br><br><br><br><br><br><br><br>
	<form action="log" method="post">
	
	<div class="content">
		
		<br><br>
		<input type="text" name="uid" placeholder="Enter User Name" required><br>
		<input type="password" name="pass"placeholder="Enter Password" required><br>
		
		
		<button type="submit" name="submit">Login</button><br>
		<label>
      <input type="checkbox" name="remember"> Remember me
    	</label><br>
		
		
		</div>
		
</form>

</div>
</body>
</html>