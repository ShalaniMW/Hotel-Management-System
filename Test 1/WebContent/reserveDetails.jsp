<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="General.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.body{
background-image:url('Pictures/header2.jpg');
height:700px;

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

<div class="content">


<c:forEach var="res" items="${resDetails}">


<form>

<table>

	
	
	<c:set var="reserveNu"  value="${res.reserveNu}"/>
	<c:set var="cusId"  value="${res.cusId}"/>
	<c:set var="hallId"  value="${res.hallId}"/>
	<c:set var="date"  value="${res.date}"/>
	<c:set var="function"  value="${res.function}"/>
	<c:set var="noOfhrs"  value="${res.noOfhrs}"/>
	<c:set var="menuType"  value="${res.menuType}"/>
	<c:set var="noOfguests"  value="${res.noOfguests}"/>
	
	
	
	<tr>
		<td>Reservation Number</td>
		<td>${res.reserveNu}</td>
	</tr>
	<tr>
		<td>Customer ID</td>
		<td>${res.cusId}</td>
	</tr>
	<tr>
		<td>Hall ID</td>
		<td>${res.hallId}</td>
	</tr>
	<tr>
		<td>Date</td>
		<td>${res.date}</td>
	</tr>
	<tr>
		<td>Function</td>
		<td>${res.function}</td>
	</tr>
	<tr>
		<td>Time duration</td>
		<td>${res.noOfhrs}</td>
	</tr>
	
	<tr>
		<td>Menu Type</td>
		<td>${res.menuType}</td>
	</tr>
	
	<tr>
		<td>No Of guests</td>
		<td>${res.noOfguests}</td>
	</tr>

	
	
	</table>
	
	
	
	<c:url value="updatereservation.jsp" var="resupdate">
		<c:param name = "reserveNu" value ="${reserveNu}" />
		<c:param name = "cusId" value ="${cusId}" />
		<c:param name = "hallId" value ="${hallId}" />
		<c:param name = "date" value ="${date}" />
		<c:param name = "function" value ="${function}" />
		<c:param name = "noOfhrs" value ="${noOfhrs}" />
		<c:param name = "menuType" value ="${menuType}" />
		<c:param name = "noOfguests" value ="${noOfguests}" />
	 </c:url>
	
	<a href="${resupdate}">
	<input type="button" name="update" class="button" value="Update Reservation">
	</a>
	
	
	<c:url value="deletereservation.jsp" var="resdelete">
		<c:param name = "reserveNu" value ="${reserveNu}" />
		<c:param name = "cusId" value ="${cusId}" />
		<c:param name = "hallId" value ="${hallId}" />
		<c:param name = "date" value ="${date}" />
		<c:param name = "function" value ="${function}" />
		<c:param name = "noOfhrs" value ="${noOfhrs}" />
		<c:param name = "menuType" value ="${menuType}" />
		<c:param name = "noOfguests" value ="${noOfguests}" />
	 </c:url>
	
	<a href="${resdelete}">
	<input type="button" name="delete" class="button" value="Delete Reservation">
	</a>
	
	
	
	
	
</form>

</c:forEach>

</div>

	</div>
</body>
</html>