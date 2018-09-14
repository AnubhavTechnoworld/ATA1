<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<h1>Add Driver</h1><hr>
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
	<form action="savedriver" method="post">
	<table border="1" style="width:60%;height:360px" align="center">
	<tr>
	<td><b>Driver Name</b></td>
	<td><input type="text" name="name"></td>
	</tr>
	<tr>
	<td><b>Street</b></td>
	<td><input type="text" name="street"></td>
	</tr>
	<tr>
	<td><b>Location</b></td>
	<td><input type="text" name="location"></td>
	</tr>
	<tr>
	<td><b>City</b></td>
	<td><input type="text" name="city"></td>
	</tr>
	<tr>
	<td><b>State</b></td>
	<td><input type="text" name="state"></td>
	</tr>
	<tr>
	<td><b>Pincode</b></td>
	<td><input type="text" name="pincode"></td>
	</tr>
	<tr>
	<td><b>Mobile No.</b></td>
	<td><input type="text" name="mobileNo"></td>
	</tr>
	<tr>
	<td><b>License No.</b></td>
	<td><input type="text" name="licenseNumber"></td>
	</tr>
	</table>
	<br><br>
	<center><input type="submit" value="adddriver" name="action"/></center>
	<br><br>
	</form>
</body>
</html>