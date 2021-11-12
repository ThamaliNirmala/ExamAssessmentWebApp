<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Instructor Login</title>
<link rel="stylesheet" type="text/css" href="../styles/admin.css" />
</head>
<body>
<center><font color="red">Username and Password Mismatch</font></center><br>
<center><font color="green">Please Re-Enter Your Credentials Again!</font></center><br>
<form action="<%=request.getContextPath()%>/login" method="post">
		<table border="0" cellpadding="10" cellspacing="1" width="500" align="center" class="tblLogin">
			<tr class="tableheader">
			<td align="center" colspan="2">Enter Login Credentials</td>
			</tr>
			<tr class="tablerow">
			<td>
			<input type="text" name="username" placeholder="Instructor Name" class="login-input" required></td>
			</tr>
			<tr class="tablerow">
			<td>
			<input type="password" name="password" placeholder="Password" class="login-input" required></td>
			</tr>
			<tr class="tableheader">
			<td align="center" colspan="2"><input type="submit" name="submit" value="Submit" class="btnSubmit"></td>
			</tr>
		</table>
</form><br>
<center><button onclick="document.location.href='mainLogin.jsp'">Back</button></center>
</body></html>