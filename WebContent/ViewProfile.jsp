<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
	<div>
	<input type="button" value="Logout" style="float: right;"/>
	<input type="button" value="Home" style="float: right;"/>
	
	</div>
	<br><br><br><br><br>
	<table border="1" style="width:100%;height:360px" >
	<tr>
	<th>userID</th>
	<th>firstName</th>
	<th>lastName</th>
	<th>dateOfBirth</th>
	<th>gender</th>
	<th>Street</th>
	<th>Location</th>
	<th>City</th>
	<th>State</th>
	<th>Pincode</th>
	<th>Mobile No.</th>
	<th>emailID</th>
	<c:forEach var="pro" items="${profiles}">
<tr>
<td>${pro.userID}</td>
<td><%= request.getParameter("firstName")%></td>
<td><%= request.getParameter("lastName")%></td>
<td><%= request.getParameter("dob")%></td>
<td><%= request.getParameter("gender")%></td>
<td><%= request.getParameter("street")%></td>
<td><%= request.getParameter("location")%></td>
<td><%= request.getParameter("city")%></td>
<td><%= request.getParameter("state")%></td>
<td><%= request.getParameter("pincode")%></td>
<td><%= request.getParameter("mobileNo")%></td>
<td><%= request.getParameter("emailID")%></td>

	</tr>
	</c:forEach>
	
	</table>
	<br><Br><br>
	<center><form action="Administrator.jsp"><input type="submit" value="Go back to Login page"/></form></center>
	<br><Br><br>
</body>
</html>