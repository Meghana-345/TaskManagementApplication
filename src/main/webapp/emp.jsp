<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>employee tasks</title>
<style>
div {
  width:100%;
  height: 100%;
  padding: 40px;

  margin: 0;
  align:centre;
}
</style>

</head>
<body style= "background-color:#F99C95">

<div class="row">
<div class="col-md-4" style="background-color:#A5BDA9; margin-top:2%">
      
       <h3 style="text-align:center"><b>Task1:</b></h3>
        <label for="taskTitle1">Task Title:</label>
        <input type="text"  name="tasktitle" value="task1 title" readonly>
<br><br>
        <label for="taskDescription1">Task Description:</label>
        <textarea  name="taskdescription" rows="4" cols="30" readonly>Task 1 Description text goes here.</textarea>
<br><br>
        <label for="priority1">Priority:</label>
        <input type="text"  name="priority" value="High" readonly>
<br><br>
        <label for="dueDate1">Due Date:</label>
        <input type="text"  name="taskdead" value="2024-03-01" readonly>
<br><br>
        <label for="status1">Status:</label>
        <select id="status1" name="status1">
            <option value="started">Started</option>
            <option value="notStarted">Not Started</option>
            <option value="inProgress">In Progress</option>
            <option value="completed">Completed</option>
            <option value="onHold">On Hold</option>
        </select>
<br><br>
     <input type="button" value="submit"/style="background-color:#8ED5A9"> 
 </div>
     
       <div class="col-md-4" style="background-color:#EFC3CA; margin-top:2% ">
     
        <h3 style="text-align:center"><b>Task2:</b></h3>
        <label for="taskTitle2">Task Title:</label>
        <input type="text" id="taskTitle2" name="tasktitle" value="Task 2 Title" readonly>
<br><br>
        <label for="taskDescription2">Task Description:</label>
        <textarea id="taskDescription2" name="taskdescription" rows="4" cols="30" readonly>Task 2 Description text goes here.</textarea>
<br><br>
        <label for="priority2">Priority:</label>
        <input type="text" id="priority2" name="priority2" value="Medium" readonly>
<br><br>
        <label for="dueDate2">Due Date:</label>
        <input type="text" id="dueDate2" name="dueDate2" value="2024-03-05" readonly>
<br><br>
        <label for="status2">Status:</label>
        <select id="status2" name="status2">
            <option value="started">Started</option>
            <option value="notStarted">Not Started</option>
            <option value="inProgress">In Progress</option>
            <option value="completed">Completed</option>
            <option value="onHold">On Hold</option>
        </select>

        <br><br>
          <input type="button" value="submit"/style="background-color:#8ED5A9"> 
        </div>
         <div class="col-md-4"style="background-color:#CFC7A7; margin-top:2% ">
   
        <h3 style="text-align:center"><b>Task3:</b></h3>
        <label for="taskTitle3">Task Title:</label>
        <input type="text" id="taskTitle3" name="taskTitle3" value="Task 3 Title" readonly>
<br><br>
        <label for="taskDescription3">Task Description:</label>
        <textarea id="taskDescription3" name="taskDescription3" rows="4" cols="30" readonly>Task 2 Description text goes here.</textarea>
<br><br>
        <label for="priority2">Priority:</label>
        <input type="text" id="priority3" name="priority3" value="Medium" readonly>
<br><br>
        <label for="dueDate3">Due Date:</label>
        <input type="text" id="dueDate3" name="dueDate3" value="2024-04-05" readonly>
<br><br>
        <label for="status3">Status:</label>
        <select id="status3" name="status3">
            <option value="started">Started</option>
            <option value="notStarted">Not Started</option>
            <option value="inProgress">In Progress</option>
            <option value="completed">Completed</option>
            <option value="onHold">On Hold</option>
        </select>

        <br><br>
                  <input type="button" value="submit"/ style="background-color:#8ED5A9"> 
        
        </div>
</div>
  <br><br>
</form>
    
<br><br><br>

</body>
</html>
