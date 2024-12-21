<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Team Assignment</title>
</head>

<body style="background-color:#C39642">
    <h1> Welcome ${session_name}! assign the tasks for Employees!</h1>
<form action="leader" style="background-color: #E28EF7;width:20%;margin-left: 40%" method="post">
    <h2>Project Details</h2>
    <label>Select a Project:</label>
    <select  id="project" name="project">
        <option value="projectAlpha">Project Alpha</option>
        <option value="projectBeta">Project Beta</option>
        <option value="projectGamma">Project Gamma</option>
        
    </select>
    <br>
      <div id="taskForm" class="hidden">
        <h2>Task Details</h2>

        <label for="taskTitle">Task Title:</label>
        <input type="text" id="tasktitle" name="tasktitle" required><br>

        <label for="taskDescription">Task Description:</label>
        <textarea id="taskdescription" name="taskdescription" rows="4" cols="30" required></textarea>
<br><br>
        <label for="priority">Priority:</label>
        <select id="priority" name="priority" required>
            <option value="high">High</option>
            <option value="medium">Medium</option>
            <option value="low">Low</option>
        </select>
<br>
        <label for="dueDate">Due Date:</label>
        <input type="date" id="taskdead" name="taskdead" required>
<br>
        <h2>Assign to which Team Member</h2>

        <label for="selectEmployee">Select Employee:</label>
        <select id="employee" name="employee" required>
            <option value="meghana">Select Meghana</option>
            <option value="babu">Select Babu</option>
			               <option value="priya">Select Priya</option>
			                <option value="manga">Select manga</option>
			                 <option value="mohan">Select mohan</option>
			                   <option value="kamal">Select kamal</option>
			                     <option value="varsha">Select varsha</option>
			
        </select>

        <br><br>
        <input type="submit"  style="margin-left: 25%"value="Assign Tasks"/>
        <br><br>
    </div>
    </form>
</body>

</html>