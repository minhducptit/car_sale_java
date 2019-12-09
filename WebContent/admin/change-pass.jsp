<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Car-sale</title>
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/abc.css" type="text/css" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href="css/style_AM.css" rel="stylesheet" type="text/css" />
<link href="css/content.css" rel="stylesheet" type="text/css" />
<link href="./dist/css/sb-admin-2.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
input[type=text], select {
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
</style>
</head>

<body>
	<jsp:include page="../admin/jsp-common/header-admin.jsp"></jsp:include>
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<h1 style="padding-right: 60px">Change Password</h1>
				</div>
				<!-- /.col-lg-12 -->
				<div class="col-lg-7" style="padding-bottom: 120px">
					<form action="change-pass" method="POST" onsubmit = "return validateChangePassword()">
						<div class="form-group">
							<label>Old Password</label> <br> <input type="password"
								class=" form-control" name="oldPassword" id="oldPassword"
								placeholder="Please enter old password" />
						</div>
						<div class="form-group">
							<label>New Password</label> <br> <input type="password"
								class="form-control" name="newPassword" id="newPassword"
								placeholder="Please enter new password" />
						</div>
						<div class="form-group">
							<label>Confirm Password</label> <br> <input type="password"
								class="form-control" name="confirmPassword" id="confirmPassword"
								placeholder="Please enter confirm password" />
						</div>
						<br> <input type="submit" class="btn btn-default"
							value="Change Password" name="submit" />
						<button type="reset">
							<a href="index.jsp"> Cancel</a>
						</button>
						<form>
						<h2>${message}</h2>
				</div>
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="../jsp/footer.jsp"></jsp:include>
	<script>
		function validateChangePassword(){
			var oldPassword = document.getElementById("oldPassword").value;
			var newPassword = document.getElementById("newPassword").value;
			var confirmPassword = document.getElementById("confirmPassword").value;
			var regexPassword= /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
			var err="";
			if(!regexPassword.test(oldPassword)){
				alert("oldPassword phải có tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số:");
				err+=oldPassword;
			}
			if(!regexPassword.test(newPassword)){
				alert("new Password phải có tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số:");
				err+=newPassword;
			}
			if(!regexPassword.test(confirmPassword)){
				alert("Password phải có tối thiểu tám ký tự, ít nhất một chữ cái viết hoa, một chữ cái viết thường và một số:");
				err+=confirmPassword;
			}
			if(oldPassword==newPassword){
				alert("mật khẩu mới phải khác mật khẩu cũ");
				err+= "error";
			}
			if(confirmPassword!=newPassword){
				alert("mật khẩu xác nhận không chính xác");
				err+= "err";
			}
			if(err.length>0) return false;
			return true;
		}
	</script>
</body>

</html>