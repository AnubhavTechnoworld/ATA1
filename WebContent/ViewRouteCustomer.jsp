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
	
    <th>Source</th>
    <th>Destination</th>
    <th>Distance</th>
    <th>Travel Duration</th>
	
	<c:forEach var="rou" items="${route}">
<tr>

<td><c:out value="${rou.source}"></c:out></td>
<td><c:out value="${rou.destination}"></c:out></td>
<td><c:out value="${rou.distance}"></c:out></td>
<td><c:out value="${rou.travelDuration}"></c:out></td>

	</tr>
	</c:forEach>
	
	</table>
	<br><Br><br>
	<center><form action="user.jsp"><input type="submit" value="Go back to user page"/></form></center>
	<br><Br><br>
</body>
</html>