<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div align="center">
		<h1>Login Form</h1>
		<h2>${mess}</h2>
		<form action="login" method="post">
			<table style="with: 100%">
				<tr>
					<td>UserName</td>
					<td><input type="text" name="userName" /></td>
				</tr>
				<tr>	
					<td>Password</td>
					<td><input type="password" name="password" /></td>
				</tr>

			</table>
			<input type="submit" value="submit" name="action" />
		</form>
		<a href="register.jsp">Register Account</a>
	</div>
</body>
</html>