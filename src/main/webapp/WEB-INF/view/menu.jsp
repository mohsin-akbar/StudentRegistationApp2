<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
input[type="submit"] {
  border: none;
  display: block;
  background-color: #3ca9e2;
  color: #fff;
  font-weight: bold;
  text-transform: uppercase;
  cursor: pointer;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
  font-size: 10px;
  position: relative;
  display: inline-block;
  cursor: pointer;
  text-align: center;
  width:250px;

}
input[type="submit"]:hover {
  background-color: #329dd5;
  -webkit-transition: all 0.2s ease;
  transition: all 0.2s ease;
}
.div1{
margin-left:250px;
}
</style>

<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>
<div class="div1">
<a href="savedList"><input type="submit" value="All Registration"></a>
<a href="saveRegistration"><input type="submit" value="New Registration"></a>
<a href="logOut"><input type="submit" value="LogOut"></a>
</div>
</body>
</html>