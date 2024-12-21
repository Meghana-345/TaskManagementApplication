<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Employee Task View</title>
</head>
<body style="background-color:#E5D4D4">
    <h1 style="text-align:center"> Welcome, ${session_name}  ! Tasks View</h1>
    <h2 style="text-align:center; ">Assigned Tasks!</h2>
  <form action="submitTasks" method="post">
<h1>Employee:<input type="text" name="employee"/></h1><br><br>
<input type="submit" style="margin-left:10%; background-color:yellow;color:red" value="SEARCH"/> <br><br>
</form>

</body>

</html>