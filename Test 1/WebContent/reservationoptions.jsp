<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="General.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	


<form>
	
	<div class="content">
	
	<c:url value="viewHalls.jsp" var="view">
		
	 </c:url>
	
	<a href="${view}">
	
	<input type="button" name="check" class="button" value="View Halls">
	</a>
	
	
	<br><br>
		<c:url value="hallcheck.jsp" var="check">
		
	 </c:url>
	
	<a href="${check}">
	
	<input type="button" name="check" class="button" value="Edit / Delete Reservation">
	</a>
	
	<br><br>
	<c:url value="reservation_insert.jsp" var="insert">
	 </c:url>
	
	<a href="${insert}">
	<input type="button" name="check" class="button" value="Add reservation">
	</a>
	
	</div>
	
		</form>
		<br>
		
	

	
</div>
</body>
</html>