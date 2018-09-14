<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link href="css/animate.min.css" rel="stylesheet">
</head>
<body>
<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("userID")==null)
      response.sendRedirect("Login.jsp");

  %>
<div style='float:right' class="navbar-collapse collapse">
          <div class="menu">
            <ul class="nav nav-tabs" role="tablist">
              <li role="presentation"><a href="home.jsp" class="active">Home</a></li>              
              <li role="presentation"><a href="logout">Log Out</a></li>
            </ul>
          </div>
        </div>
<h1>Welcome to Home Page</h1><hr>
	<div align="left" style="float: left;">
	Logo
	</div>
	<div align="center">
	Project Title
	
	</div>
	<hr>
	<div align="left" style="float: left;">
	Logged Name
	</div>
	
	<br>
	<table border="1" style="width:100%;height:360px" >
	<tr>
	<th>Vehicle Id</th>
	<th>Name</th>
	<th>Type</th>
	<th>Registration Number</th>
	<th>Seating Capacity</th>
	<th>Fare Per KM</th>
	<th><br></th>
	<th><br></th>
	<c:forEach var="veh" items="${vehicles}">
<tr>
<td>${veh.vehicleID}</td>
<td>${veh.name}</td>
<td>${veh.type}</td>
<td>${veh.registrationNumber}</td>
<td>${veh.seatingCapacity}</td>
<td>${veh.farePerKM}</td>


	<td><a href="editVehicle.html">Edit</a></td>
	<td><a href="DeleteVehicle.html">Delete</a></td>
	</tr>
	</c:forEach>
	
	</table>
	<br><Br><br>
	<center><form action="Administrator.jsp"><input type="submit" value="Go back to admin page"/></form></center>
	<br><Br><br>
</body>
</html>