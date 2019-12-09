<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>
</head>
<body>
	<div align="center">
		<h1>Đăng ký tài khoản</h1>
		<h2>${message}</h2>
		<form action="signup" method="post" onsubmit="return validateFormSignUp()">
			<table style="with: 50%">
				<tr>
					<td>UserName</td>
					<td><input id ="userName" type="text" name="userName" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input id ="password" type="password" name="password" /></td>
				</tr>
				<tr>
					<td>Full Name</td>
					<td><input id="fullName" type="text" name="fullName" /></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input id="age" type="text" name="age" /></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><input id="address" type="text" name="address" /></td>
				</tr>
				<tr>
					<td>Phone number</td>
					<td><input id="phone" type="text" name="phone" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input id="email" type="text" name="email" /></td>
				</tr>
			</table>
			<input type="submit" value="submit" name="signup" />
		</form>
		<a href="login.jsp">Quay lại trang đăng nhập</a>
	</div>	
	<script src="js/validate.js"></script>
</body>
</html>