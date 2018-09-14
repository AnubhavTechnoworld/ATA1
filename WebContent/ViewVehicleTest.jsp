<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Vehicle</title>
</head>
<body>


<h1>Employee Details</h1>
<form action="EmployeeController">
	<input type="submit" value="add" name="action"/>
</form>
<BR>
<table border="3">
<tr>
<th>vehicle id</th>
<th>Name</th>
<th>type</th>
<th>registration number</th>
<th>capacity</th> 
<th>fare per km</th>
</tr>
<c:forEach var="employee" items="${employees}">
<tr>
<td>${employee.vehicleid}</td>
<td>${employee.name}</td>
<td>${employee.type}</td>
<td>${employee.registrationnumber}</td>
<td>${employee.capacity}</td>
<td>${employee.fare}</td>
</tr>
</c:forEach>


</table>
</body>
</html>