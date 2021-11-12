<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "exam_moodle";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from instructor where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head><title>Update Assessment</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "../styles/paper.css" /></head>
<body>
<center>
<h1 class="h2">Update Assessment</h1>
<div style="float:left"><button style="background-color:gray;color:white" onclick="document.location.href='mainLogin.jsp'">Logout</button></div>
<div style="float:right">OR <a href="assessment.jsp"><button style="padding:5px;color:blue">Publish Assessment</button></a></div>
<form method="post" action="update-process.jsp">
<table>
<tr>
<td>ID:</td>
<td><input type="hidden" name="id" value="<%=resultSet.getString("id") %>"><input type="text" name="id" value="<%=resultSet.getString("id") %>" disabled></td>
</tr>
<tr>
<td>Assessment ID:</td>
<td><input type="text" name="assessmentId" value="<%=resultSet.getString("assessmentId") %>"></td>
</tr>
<tr>
<td>Assessment Type:</td>
<td><input type="text" name="type" value="<%=resultSet.getString("type") %>" required>
</td>
</tr>
<tr>
<td>Assessment Version:</td>
<td><input type="text" name="version" value="<%=resultSet.getString("version") %>" required>
</td>
</tr>
<tr>
<td>Batch:</td>
<td><input type="text" name="batch" value="<%=resultSet.getString("batch") %>" required>
</td>
</tr>
<tr>
<td>Faculty:</td>
<td><input type="text" name="faculty" value="<%=resultSet.getString("faculty") %>" required>
</td>
</tr>
<tr>
<td>Instructor Name:</td>
<td><input type="text" name="instructorName" value="<%=resultSet.getString("instructorName") %> " required>
</td>
</tr>
<tr>
<td>Date Published:</td>
<td><input type="text" name="datePublish" value="<%=resultSet.getString("datePublish") %>" required>
</td>
</tr>
<tr>
<td>Due Date:</td>>
<td><input type="text" name="dueDate" value="<%=resultSet.getString("dueDate") %>" required>
</td>
</tr>
</table><br>
<input type="submit" value="Update" style="padding:5px;color:red"> 
</center>
</form>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>