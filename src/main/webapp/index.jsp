<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title> TASK MANAGEMENT APPLICATION</title>
</head>
<style type="text/css">
    a{
        color: #753D44;
        font-size: 20px;
        padding:50px;
        margin-left: 10px;
    }
        #image-container {
            width: 100%;
            height:40%;
            overflow: hidden;
            white-space: nowrap;
        }

        #image-container img {
            width: 40%;
            height: 20%;
            object-fit:cover;
            display: inline-block;
            animation: scrollImages 10s linear infinite;
        }

        @keyframes scrollImages {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-100%);
            }
        }
    
</style>

<body style= "background-image: url('bg1.webp');background-repeat: no-repeat;background-size: cover;">
	<h1 style="text-align: center;color:#8CDA18 ;text-shadow:1px 1px #623C39 ;background-color: purple;">
	<img src="logo.png" width="90px"height="70px"> TASK MANAGAEMENT APPLICATION</h1>
	<nav style="background-color:#DF756C ;margin-top:-10px;">
		<a href="index.jsp">Home</a>

		<a href="Registration.jsp">Signin</a>
				<a href="Login.jsp">Login</a>
				
			
	</nav>
	<marquee style="background-color:grey;color: greenyellow;"direction="left">*Login to use the Task Management Application*</marquee>
	<h2 style="color: #126FDC  ;text-align:center">The Task Management Application Journey</h2>
	<hr style="height:2px;background-color:lightgreen"><br>
	<h3 style="margin-left:20px;margin-top: -20px"> <label style="color:#822E1C">Vision</label></h3>
	<p style="margin-left: 20px">
		To provide streamline task and project management for users.It aims to provide a user-friendly interface,effectve collaboration features,and productivity-enhancing tools, serving the needs of individuals and teams.Data security and continuous improvement are also priorities.</p>
		<h3 style="margin-left:20px"><label style="color: #1B075A"> Mission</label></h3>
	<p style="margin-left:20px">
		It helps individuals and teams organize,priority,time management and collaboration by providing tools for creating,assigning and monitoring tasks,setting deadlines and sharing progress. Task management application seek to streamline work processes,reduce stress and enhance overall productivity and accountability.
		<h3 style="margin-left:20px"><label style="color: #0D92B3"> About us</label></h3>
     <p style="margin-left: 20px">
     	Welcome to TASK MANAGEMENT APPLICATION,where productivity meets simplicity.Our team,composed of passionate individuals with a shared vision for enhancing task management,has crafted this application with precisiion and care.
     With the combined expertise in project management and software development.</p>
         <div id="image-container">
        <img src="image1.jpg" >
        <img src="image2.webp" >
        <img src="bg.jpg" >
        <img src="img.jpg" >
    </div>
            <footer style="color:white;background-color:black;text-align:center">
            	<label>Developer By @ Meghana </label>
            </footer>
</body>
</html>

