<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
   nav a{
        color: #461564 ;
                font-size: 20px;
        padding:50px;
        margin-left: 10px;
    }
       
</style>
<body style="background-color:lightpink">
<h1 style="text-align:center;color:#6c1c8f;background-color:#AAACDE"><img src="logo.png" width="90px"height="70px"> TASK MANAGEMENT APPLICATION </h1>
<nav style="background-color: #E0C1F3 ;margin-top:-10px;">
		<a href="index.jsp">Home</a>

		<a href="Registration.jsp">Signin</a>
				<a href="Login.jsp">Login</a>
			</nav>
			<div class="row">
			<div class="col-md-6">
<form style="background-color: #51d7a8;width:50%;margin-left: 40%" method="post" action="regLogin">
<u><h3 style="color: blue">Employee Login Form</h3></u>
	<label  style="margin-left:10%">User name: <sup style="color: red">*</sup> </label><br>
<input type="text" name="username" placeholder=" Enter Your User Name" style="color:#dd314e;background-color:#c5f5f4; margin-left:20%"required><br>
<label style="margin-left:10%">Email: <sup style="color: red">*</sup></label><br>
<input type="email" name="useremail" placeholder="Enter the email id" style="color:#dd314e;background-color:#c5f5f4; margin-left:20%" required><br>
<label  style="margin-left:10%">Password <sup style="color: red">*</sup> </label><br>
<input type="Password" name="userpassword" placeholder=" Enter Your Password"style="color:#dd314e;background-color:#c5f5f4; margin-left:20%" required><br><br>
<input type="submit"style="margin-left:40%" value="Login"/>
<h4>Not yet registered?<a href="Registration.jsp">Register here</a></h4><br>
</form>
<br>
</div>
<div class="col-md-6">
<form style="background-color: #88C4C6;width:50%;margin-left: 30%" method="post" action="team">
<u><h3 style="color: blue">Teamleader Login Form</h3></u>
	<label  style="margin-left:10%">User name: <sup style="color: red">*</sup> </label><br>
<input type="text" name="username" placeholder=" Enter Your User Name" style="color:#dd314e;background-color:#c5f5f4; margin-left:20%"required><br>
<label style="margin-left:10%">Email: <sup style="color: red">*</sup></label><br>
<input type="email" name="useremail" placeholder="Enter the email id" style="color:#dd314e;background-color:#c5f5f4; margin-left:20%" required><br>
<label  style="margin-left:10%">Password <sup style="color: red">*</sup> </label><br>
<input type="Password" name="userpassword" placeholder=" Enter Your Password"style="color:#dd314e;background-color:#c5f5f4; margin-left:20%" required><br><br>
<input type="submit" style="margin-left:40%" value="Login"/>
<h4>Not yet registered?<a href="Registration.jsp">Register here</a></h4><br>
</form>
</div>
</div>
<footer>
<label style="color: #c4c4b2;background-color:#818036;margin-left:40.5%">Developed BY @ MEGHANA</label>
</footer>
</body>
</html>