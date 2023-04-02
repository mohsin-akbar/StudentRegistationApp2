<!DOCTYPE html>
<%@ include file="menu.jsp" %>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Registration form</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="login.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div id="login-form-wrap">
  <h2>Register Here</h2>
   <%
  if(request.getAttribute("msg")!=null){
	  out.println(request.getAttribute("msg"));
  }
  %>
  <form id="login-form" action="saveRegistration" method="post">
    <p>
    <input type="text" id="username" name="name" placeholder="Name" required><i class="validation"><span></span><span></span></i>
    </p>
    <p>
    <input type="text" id="email" name="city" placeholder="City" required><i class="validation"><span></span><span></span></i>
    </p>
    <p>
    <input type="email" id="username" name="email" placeholder="Email" required><i class="validation"><span></span><span></span></i>
    </p>
    <p>
    <input type="text" id="email" name="mobile" placeholder="Mobile" required><i class="validation"><span></span><span></span></i>
    </p>
    <p>
    <input type="submit" id="login" value="Save">
    </p>
  </form>
  <div id="create-account-wrap">
    <p>&#9410 Copyright Created by <a href="https://www.instagram.com/x_mohsin_nazir_x7/">@Mohsin_Bhai</a><p>
  </div><!--create-account-wrap-->
</div><!--login-form-wrap-->
<!-- partial -->
 
</body>
</html>
