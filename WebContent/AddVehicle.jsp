<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
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
<h1>Add Vehicle</h1><hr>
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
	
	<br><br><br><br><br>
	<b><p style="font-size:16px" align="center">Please enter details below:</p></b><br><br>
	<form action="savevehicle" method="post">
	<table border="1" style="width:60%;height:360px" align="center">
	<td><b>Vehicle Name</b></td>
	<td><input type="text" name="name"></td>
	</tr>
	<tr>
	<td><b>Type</b></td>
	<td><label>Select Type</label>
             <select id = "Type" name="type">
               <option value = "1">Mini</option>
               <option value = "2">Micro</option>
               <option value = "3">XL</option>
             </select>
			</td>
		</tr>
	<tr>
	<td><b>Registration Number</b></td>
	
	<td><input type="text" name="registrationNumber"></td>
	</tr>
	<tr>
	<td><b>Seating Capacity</b></td>
	<td><label>Select Capacity</label>
             <select id = "Type" name="seatingCapacity">
               <option value = "4">4</option>
               <option value = "6">6</option>
               <option value = "8">8</option>
             </select>
			</td>
		</tr>
		<tr>
		<td><b>Fare Per KM</b></td>
		<td><input type="text" name="farePerKM"></td>
		</tr>
		<tr></tr>
	</table>
	<br><br>
	<center><input type="submit" value="addvehicle" name="action"/></center>
	<br><br>
	</form>
</body>
</html>