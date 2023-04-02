<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@ include file="menu.jsp" %>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Registration List</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="login.css">
<style>
#table{
margin-left:200px;
background-color:white;
width:895px;
box-shadow:5px 5px 2px #C6E2FF;
}
h2{
margin-left:0px;
color:white;
}
#button{
  background-color:#3ca9e2;
  cursor:pointer;
}
#botton:hover{
background-color:#05A0C8;
}

</style>
</head>
<body>
<!-- partial:index.partial.html -->
<h2>Registered List</h2>
<div id="table">
  
  <table border="1">
  <tr>
  	<th>Name</th>
  	<th>City</th>
  	<th>Email</th>
  	<th>mobile</th>
  	<th>DELETE</th>
  	<th>UPDATE</th>
  </tr>
  	
  	<% 
  	ResultSet rs=(ResultSet)request.getAttribute("result");
  	while(rs.next()){
  	%>
  	
  	<tr>
  	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><a href="delete?email=<%=rs.getString(3)%>" ><input type="button" id="button" value="Delete"/></a></td>
     <td><a href="Update?email=<%=rs.getString(3)%>&mobile=<%=rs.getString(4) %>" ><input type="button" id="button" value="Update"/></a></td>
  	</tr>
  <%} %>
  </table>
  </div>
 
</body>
</html>
