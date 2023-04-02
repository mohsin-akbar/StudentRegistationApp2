<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="login.css">
<meta charset="ISO-8859-1">
<title>Update</title>
<style >
table{
margin-left:450px;
background-color:white;
}
#sub{
margin-left:500px;
}


</style>
</head>
<body>
<h2>Update your Mobile</h2>
<form action="Update" method="post">
<table border="1">
<tr>
	<td>Email</td>
	<td><input type="text" name="email" value="<%=request.getAttribute("email")%>"/></td>
</tr>
<tr>
	<td>New Mobile</td>
	<td><input type="text" name="mobile" value="<%=request.getAttribute("mobile")%>"/></td>
</tr>
</table>
	<input type="submit" id="sub" value="update"/>
	


</form>
</body>
</html>