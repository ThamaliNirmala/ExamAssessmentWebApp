<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "../styles/paper.css" />

<meta charset="UTF-8">
<title>VIP Assessment Published</title>
</head>
<body class="body">
<center>
	<h2 class="h2">Publish Assessment</h2>
	<button style="background-color:gray;color:white;float:left" onclick="document.location.href='mainLogin.jsp'">Logout</button>
	<br>

	<form method="POST" action="<%=request.getContextPath()%>/AddInstructorServelet">
		<table>
			<tr>
				<td>Assessment ID</td>
				<td><input type="text" name="assessmentId" required placeholder="e.g. IT2030"/></td>
			</tr>
			<tr>
				<td>Assessment Type</td>
				<td><input type="radio" name="type" value="openBook"
					tabindex="1" required/> Open_Book</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="radio" name="type" value="closeBook"
					checked="checked" tabindex="2" required/> Close_Book</td>
			</tr>
			<tr>
				<td>Assessment Version</td>
				<td><input type="text" name="version" required placeholder="e.g. A"/></td>
			</tr>
			<tr>
				<td>Batch</td>
				<td><input type="text" name="batch" required placeholder="e.g. 6.1"/></td>
			</tr>
			<tr>
				<td>Faculty</td>
				<td><input type="text" name="faculty" required placeholder="e.g. CSSE"/></td>
			</tr>
			<tr>
				<td>Instructor Name</td>
				<td><input type="text" name="instructorName" required  placeholder="e.g. Thamali"/></td>
			</tr>
			<tr>
				<td>Date Publish</td>
				<td><input type="date" name="datePublish" required placeholder="2021-05-02"/></td>
			</tr>
			<tr>
				<td>Due Date</td>
				<td><input type="date" name="dueDate" required  placeholder="as instructor define"/></td>
				
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add Assessment" class="add-button" style="color:white"/> </td>
			</tr>
			<tr>	
				<td colspan="2"><input type="reset" value="Reset" class="reset-button" style="color:white;background-color:green"/></td>
			</tr>

		</table>
		</form>


				<center><a href="ListInstructor.jsp"><button style="color:red;font-size:30px;width:285px;margin-left:65px">List All Assessments</button></a></center>


</center>
</body>
</html>