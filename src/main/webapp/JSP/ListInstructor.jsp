<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
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
<!DOCTYPE html>
<html>
<head>
	<link rel = "stylesheet"
   type = "text/css"
   href = "../styles/paper.css" />
   <title>Available Assessments</title>
 </head>
<body>

<center><h1 class="h2">Available Assessments</h1></center>
<button style="background-color:gray;color:white" onclick="document.location.href='mainLogin.jsp'">Logout</button>
<table style="padding:5px;margin:5px">
<tr>
<th style="background-color:yellow">Assessment_ID</th>
<th style="background-color:yellow">Assessment_Type</th>
<th style="background-color:yellow">Assessment_Version</th>
<th style="background-color:yellow">Batch</th>
<th style="background-color:yellow">Faculty</th>
<th style="background-color:yellow">Instructor_Name</th>
<th style="background-color:yellow">Published_Date</th>
<th style="background-color:yellow">Due_Date</th>
<th style="background-color:orange">Operation</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Instructor";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td style="background-color:white"><%=resultSet.getString("assessmentId") %></td>
<td style="background-color:white"><%=resultSet.getString("type") %></td>
<td style="background-color:white"><%=resultSet.getString("version") %></td>
<td style="background-color:white"><%=resultSet.getDouble("batch") %></td>
<td style="background-color:white"><%=resultSet.getString("faculty") %></td>
<td style="background-color:white"><%=resultSet.getString("instructorName") %></td>
<td style="background-color:white"><%=resultSet.getString("datePublish") %></td>
<td style="background-color:white"><%=resultSet.getString("dueDate") %></td>
<td style="background-color:white"><a href="delete.jsp?id=<%=resultSet.getString("id") %>"><button style="color:white;background-color:red">Delete</button></a><a href="update.jsp?id=<%=resultSet.getString("id")%>" style="text-decoration:none;"><button style="color:white;background-color:blue">update</button></a></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<br><br><br>

<center><a href="assessment.jsp"><button style="color:red;font-size:30px">Publish Assessment</button></a></center>
</body>
</html>