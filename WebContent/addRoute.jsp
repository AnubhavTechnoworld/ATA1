<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Routes</title>
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
<h1>Add New Routes</h1>
<div align="left" style="float: left;">
	Logo
	</div>
	<div align="center">
	Project Title
	
	</div>
	<hr>
	<div align="left" style="float: left;">
	Logged Name
	</div><br><hr><br>
<form action="saveroute" method="post">
<table border="2" align="center" style="width:50%;height:250px">
<!-- <tr>
	<td>Route ID</td>
	<td><input type = "text" name="routeID"/></td>
</tr> -->
<tr>
	<th>Source</th>
	<td align="center"><input type = "text" style="width:50%" name="source" /></td>
</tr>
<tr>
	<th>Destination</th>
	<td align="center"><input type = "text" style="width:50%" name="destination" /></td>
</tr>
<tr>
	<th>Distance</th>
	<td align="center"><input type = "text" style="width:50%" name="distance" /></td>
</tr>
<tr>
	<th>Travel Duration</th>
	<td align="center"><input type = "text" style="width:50%" name="travelDuration" /></td>
</tr>

</table>
<br><br>
	<center>
	<input type = "submit" value="addroute" name="action"/>
	</center>
<br>
</form>

</body>
</html>