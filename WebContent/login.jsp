<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div align="center">
		<h1>Đăng nhập</h1>
		<h2>${message}</h2>
		<form action="login" method="post" onsubmit="return validateFormLogin()">
			<table style="with: 100%">
				<tr>
					<td>UserName</td>
					<td><input type="text" name="userName" id="userName" /></td>
				</tr>
				<tr>	
					<td>Password</td>
					<td><input type="password" name="password" id="password" /></td>
				</tr>

			</table>
			<input type="submit" value="submit" name="action" />
		</form>
		<a href="login?action=signup">Đăng ký tài khoản</a>
	</div>
	<script src="js/validate.js"></script>
</body>
</html>