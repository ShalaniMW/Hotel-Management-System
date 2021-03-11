<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="General.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>




<style> 

#largebox{
    width:700px;
    height:170px;
    border: 1px solid black;
	border-radius:10px;
    padding-left:18px;
    background-color:#D2DEF6;
    margin-left:200px;
    margin-top:30px;
    
	}
 
 
#box1{
    width:250px;
    height:120px;
    border:1px solid black;
	border-radius:10px;
    align:center;
    padding:20px;
    background-color:white;
    margin-left:300px;
    margin-top:-55px 
	}
 

#para1{
    font-size:15px;
    margin-top:-5px;
    
	}
 

body
{
	
    background-repeat:repeat;     
}

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
<br><br>
 
	
	<div class="content1">
 
	<div id="largebox"  >
		<h4> COOL BREEZE HALL (H01) </h4>
 
		
			<div id="box1"> 
 
				<p id ="para1" >
					* 450 guests <br/>
					* Venue area = 6500 sqft<br/>
					* 20ft x 20ft dance floor<br/>
					* AC<br/>
					* Free Wifi <br/>
					* Special packages for Weddings<br/>
					* Rs.210,000/=
				</p>
 
					
					
			</div>
	</div>
 
 
 

 
	<div id= "largebox"> 
		<h4> SKY RUN HALL (H02)</h4> 
 
			<div id="box1"> 
 
				<p id ="para1" >
					* 150 guests <br/>
					* Venue area = 2400 sqft<br/>
					* Non-AC <br/>
					* Fully secured<br/>
					* Free Wifi <br/>
					* Adjustable lighting systems<br/>
					* Rs.75,000/= 
				</p>
 
					
					
			</div>
	</div>
 
 
 
 
 
	<div id="largebox">
		<h4>Grand Diamond Hall (H03) </h4> 
 
		<div id="box1"> 
 
			<p id ="para1" >
				* 600 guests <br/>
				* Venue area = 8200 sqft<br/>
				* AC  <br/>
				* Free Wifi<br/>
				* Adjustable lighting systems <br/>
				* Special packages for Weddings<br/>
				* Rs.285,000/= 
			</p>
 
				
				</div>
		</div>
	</div>
  
<br/><br/>


 </div>
</body>
</html>


