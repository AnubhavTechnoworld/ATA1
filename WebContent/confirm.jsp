<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Page</title>
</head>
<body>
<h1>Booking Details page</h1><hr>
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
	<br>
	<table border="1" style="width:100%;height:360px" >
	<tr>
 	<th><br></th>
	<td rowspan="6" align="center">
	<form action="payment.jsp">
	<b>journey Date</b>
	<%= request.getParameter("journeyDate")%>
	<br><BR>
	<b>pickup point</b>
	<%= request.getParameter("boardingPoint")%>
	<BR><BR>
	<b>Drop point</b>
	<%= request.getParameter("dropPoint")%>
	<BR><BR>
	<input type="submit" value="Make Payement"/>
	</form>
	</td>
	</tr>
	<tr>
	<td align="center">Book a Vehicle</td>
	</tr>
	<tr>
	<td align="center"></td>
	</tr>
	<tr>
	<td align="center"></td>
	</tr>
	<tr>
	<td align="center"></td>
	</tr>
	<tr>
	<td align="center"><form action="user.jsp"><input type="submit" value="previous page"/></form></td>
	</tr>
	</table>
</body>
</html>