<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Registration form</title>
</head>
<style type="text/css">
   nav a{
        color: #753D44;
        font-size: 20px;
        padding:50px;
        margin-left: 10px;
    }
       
</style>

<body style="background-color:#719be3">
<h1 style="text-align:center;color:#6c1c8f"><img src="logo.png" width="90px"height="70px"> TASK MANAGEMENT APPLICATION </h1>
<nav style="background-color: #C6EC94;margin-top:-21px;">
		<a href="index.jsp">Home</a>

		<a href="Registration.jsp">Signin</a>
				<a href="Login.jsp">Login</a>
			</nav>
<form style="background-color: #eaa8b2;width:19.5%;margin-left: 40%" method="post" action="regUser">
<h3 style="margin-left:10%;color:#ad3321">REGISTRATION FORM</h3>


<label style="margin-left:10%">Fullname<sup style="color: red">*</sup></label><br>
<input type="text" name="fullname" placeholder="Enter your full name" style="color:#242134;background-color:#c5f5f4; margin-left:20%"required><br>
<label style="margin-left:10%">Email Id:<sup style="color: red">*</sup></label><br>
<input type="email"name="useremail" placeholder="Enter your emailid" style="color:#242134;background-color:#c5f5f4; margin-left:20%"required><br>
<label style="margin-left:10%">Username:<sup style="color: red">*</sup></label><br>
<input type="text"name="username" placeholder="Enter your username" style="color:#242134;background-color:#c5f5f4; margin-left:20%"required><br>
<label style="margin-left:10%">Mobile Number:<sup style="color: red">*</sup></label><br>
<input type="number" name="usermobile" placeholder="Enter your mobile number" style="color:#242134;background-color:#c5f5f4; margin-left:20%" required>
<label style="margin-left:10%">Password:<sup style="color: red">*</sup></label><br>
<input type="password"name="userpassword" placeholder="Enter your password" style="color:#242134;background-color:#c5f5f4; margin-left:20%"required><br>
<label style="margin-left:10%">Conform Password:<sup style="color: red">*</sup></label><br>
<input type="password"name="conformpassword" placeholder="Conform your password" style="color:#dd314e;background-color:#c5f5f4; margin-left:20%"required><br><br>
<input type="submit" style="margin-left:35%; " value="Register"/>

<h4 style="margin-left:10%">Already registered?<a href="Login.jsp">Login here</a></h4><br>
</form>
<footer>
<label style="color: #c4c4b2;background-color:#818036;margin-left:41.5%">Developed BY @ MEGHANA</label>
</footer>



</body>
</html>