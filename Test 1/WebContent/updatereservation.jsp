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
<div class="body">
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

	<%
		String reserveNu = request.getParameter("reserveNu");
		String cusId = request.getParameter("cusId");
		String hallId = request.getParameter("hallId");
		String date = request.getParameter("date");
		String function = request.getParameter("function");
		String noOfhrs = request.getParameter("noOfhrs");
		String menuType = request.getParameter("menuType");
		String noOfguests = request.getParameter("noOfguests");
		
	%>

<form action="update" method="post">
<fieldset>
<div class="content">
		Reservation Number <input type="text" name="reserveNu" value="<%= reserveNu %>" readonly><br>
		Customer ID <input type="text" name="cusId" value="<%= cusId %>"><br>
		Hall ID <input type="text" name="hallId" value="<%= hallId %>" ><br>
		Date <input type="text" name="date" value="<%= date %>"><br>
		Function <input type="text" name="function" value="<%= function %>" ><br>
		Time Duration <input type="text" name="noOfhrs" value="<%= noOfhrs %>"><br>
		Menu Type <input type="text" name="menuType" value="<%= menuType %>"><br>
		No Of guests <input type="text" name="noOfguests" value="<%= noOfguests %>"><br>
		
		<button type="submit" name="submit">Update</button><br>
</div>
</fieldset>
</form>
</div>

</body>
</html>