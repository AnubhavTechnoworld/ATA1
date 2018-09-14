<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<h1>New registration form</h1><hr>
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
	<br><br>
	<hr>
	<form action="saveprofile" method="post">
	<table border="2" style="width:100%;height:460px">
	<tr>
		<th>First Name :</th>
		<td><input type="text" name="firstName"/></td>
	</tr>
	<tr>
		<th>Last Name :</th>
		<td><input type="text" name="lastName"/></td>
	</tr>
	<tr>
		<th>Date of Birth :</th>
		<td><input type="date" name="dob" /></td>
	</tr>
	<tr>
		<th>Gender :</th>
		<td><input type="radio" value="Male" name="gender"/>Male
		<input type="radio" value="Female" name="gender"/>Female</td>
	</tr>
	<tr >
		<th rowspan="6">Address :</th>
	</tr>
	<tr>
		<td>Street : <input type="text" style="width:50%" name="street"/></td>
	</tr>
	<tr>
		<td>Location : <input type="text" style="width:50%" name="location"/></td>
	</tr>
	<tr>
		<td>City : <input type="text" name="city" /></td>
	</tr>
	<tr>
		<td>State : <input type="text" name="state"/></td>
	</tr>
	<tr>
		<td>Pincode : <input type="text" name="pincode"/></td>
	</tr>
	<tr>
		<th>Moblie No :</th>
		<td><input type="text" name="mobileNo"/></td>
	</tr>
	<tr>
		<th>Email :</th>
		<td><input type="text" style="width:50%" name="emailID"/></td>
	</tr>
	
	<tr>
		<th>Set new password:</th>
		<td><input type="password" style="width:50%" name="password"/></td>
	</tr>
	
	</table>

	<br><br>
	<center><input type="submit" value="addprofile" name="action"/></center>
	<br><br>
		</form>
</body>
</html>