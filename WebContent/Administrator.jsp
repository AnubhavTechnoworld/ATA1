<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
	<th><br></th>
	<td rowspan="8" align="center">Page Based on the navigation link here</td>
	</tr>
	<tr>
	<td align="center"><a href="getdriver">View Driver </a></td>
	</tr>
	<tr>
	<td align="center"><a href="adddriver">Add Driver</a></td>
	</tr>
	<tr>
	<td align="center"><a href="getvehicle">View Vehicle </a></td>
	</tr>
	<tr>
	<td align="center"><a href="addvehicle">Add Vehicle </a></td>
	</tr>
	<tr>
	<td align="center"><a href="getroute">View Route</a></td>
	</tr>
	<tr>
	<td align="center"><a href="addroute"target="_self">Add Route </a></td>
	</tr>
	
	</table>
</body>
</html>