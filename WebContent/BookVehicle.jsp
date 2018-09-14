<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Booking Page</title>
</head>
<body>
<h1>Vehicle Booking Page</h1><hr>
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
	<form action="savereservation" method="post">
	Select journey Date
	<input type="date" value="date" name="journeyDate"/>
	<br><BR>
	Select Booking date
	<input type="date" value="date" name="bookingDate"/>
	<br><BR>
	pick location :
	<select name="boardingPoint">
       <option value = "select">select</option>
       <option value = "A">A</option>
       <option value = "B">B</option>
       <option value = "C">C</option>
       <option value = "D">D</option>
       <option value = "E">E</option>
       </select>
	<BR><BR>
	Drop location :
	<select name="dropPoint">
       <option value = "select">select</option>
       <option value = "A">A</option>
       <option value = "B">B</option>
       <option value = "C">C</option>
       <option value = "D">D</option>
       <option value = "E">E</option>
       </select>
       <br><br>
	<input type="submit" value="Next" name="action"/>
	<input type ="reset" value="clear All"/>
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
	<td align="center"><form action="user.jsp"><input type="submit" value="Go to previous Page"/></form></td>
	</tr>
	</table>
	
</body>
</html>