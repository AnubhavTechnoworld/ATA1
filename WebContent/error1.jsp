<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<form:form name="submitForm" method="post" action="processlogin">
<h1 style="color:red;">Wrong Credentials</h1>
<table>
	<tr>
	<td>Customer <input type="radio" name="user" value="customer"/>
		Administrator <input type="radio" name="user" value="admin"/>
	</tr>
	<tr>
	<td>Username</td>
	<td><input type = "text" name="userID" /></td>
</tr>
<tr>
	<td>Password</td>
	<td><input type = "password" name="password" /></td>
</tr>
<tr>	

	<td><input type = "submit" value="Submit" /></td>
</tr>

</table>
<div style="color: red">${error}</div>
</form:form>
</body>
</html>