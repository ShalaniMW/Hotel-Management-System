<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="General.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style>
.body{
background-image:url('Pictures/header2.jpg');
height:100%;
}
</style>
    
</head>
<body>

<div class="body">
<c:forEach var="adm" items="${admDetails}">

	
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


		<form>
		<div class="content">
		<table>
		
	<tr>
		<td>Admin ID</td>
		<td>${adm.id}</td>
	</tr>
	<tr>
		<td>Name</td>
		<td>${adm.name}</td>
	</tr>
	<tr>
		<td>Email</td>
		<td>${adm.email}</td>
	</tr>
	<tr>
		<td>Contact number</td>
		<td>${adm.phone}</td>
	</tr>
	<tr>
		<td>User Name</td>
		<td>${adm.userName}</td>
	</tr>
	

	
	</table>
	</div>
</form>
<br><br><br><br><br><br><br><br><br>
</c:forEach>

</div>

</body>
</html>