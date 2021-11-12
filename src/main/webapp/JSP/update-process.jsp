<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/exam_moodle";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String assessmentId=request.getParameter("assessmentId");
String type=request.getParameter("type");
String version=request.getParameter("version");
String batch=request.getParameter("batch");
String faculty=request.getParameter("faculty");
String instructorName=request.getParameter("instructorName");
String datePublish=request.getParameter("datePublish");
String dueDate=request.getParameter("dueDate");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update instructor set id=?,assessmentId=?,type=?,version=?,batch=?,faculty=?,instructorName=?,datePublish=?,dueDate=? where id="+id;
ps = con.prepareStatement(sql);

ps.setString(1, id);
ps.setString(2, assessmentId);
ps.setString(3, type);
ps.setString(4, version);
ps.setString(5, batch);
ps.setString(6, faculty);
ps.setString(7, instructorName);
ps.setString(8, datePublish);
ps.setString(9, dueDate);

int i = ps.executeUpdate();
if(i > 0)
{
	//redirect page
	String site = new String("ListInstructor.jsp");
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", site); 
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>