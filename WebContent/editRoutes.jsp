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
<h1>Edit The routes</h1>
<table >
<tr>
	<td>Route ID</td>
	<td><input type = "text" /></td>
</tr>
<tr>
	<td>Source</td>
	<td><input type = "text" /></td>
</tr>
<tr>
	<td>Destination</td>
	<td><input type = "text" /></td>
</tr>
<tr>
	<td>Distance</td>
	<td><input type = "text" /></td>
</tr>
<tr>
	<td>Travel Duration</td>
	<td><input type = "text" /></td>
</tr>
<tr>
	
	<td><input type = "submit" value="Update" /></td>
</tr>

</table>


</body>
</html>