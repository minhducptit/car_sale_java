<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

input[type=password] {
	width: 50%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=email] {
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
					<p>
						<br>
					</p>
					<h1 class="page-useadd" style="padding-right: 600px">User Edit</h1>
					<p>
						<br>
					</p>
				</div>
				<!-- /.col-lg-12 -->
				<div class="col-lg-7" style="padding-bottom: 120px">
					<form action="user-update" method="POST" onsubmit="return validateFormUpdate()">
						<div class="form-group">
							<label>Fullname:</label> <input type="text" class="form-control"
								name="fullName" id="fullName"
								placeholder="Please Enter Fullname" />
						</div>
						<div class="form-group">
							<label>Phone:</label>&nbsp &nbsp &nbsp;<input type="text"
								name="phone" id="phone">
						</div>
						<br>
						<div class="form-group">
							<label>Age:</label>&nbsp &nbsp &nbsp &nbsp; <input type="number"
								name="age" id="age" max="100"><br>
						</div>
						<br>
						<div class="form-group">
							<label>Email:</label>&nbsp &nbsp &nbsp; <input type="email"
								class="form-control" name="email" id="email"
								placeholder="Please Enter Email" />
						</div>
						<br>
						<div class="form-group">
							<label>Address:</label>&nbsp; <input type="text"
								class="form-control" name="address" id="address"
								placeholder="Please Enter Address" />
						</div>
						<div class="form-group">
							<label>User Level</label> <label class="radio-inline"> <input
								name="rdoLevel" value="1" checked="" type="radio">Admin
							</label> <label class="radio-inline"> <input name="rdoLevel"
								value="2" type="radio">Member
							</label>
						</div>
						<br> <input type="submit" class="btn btn-default"
							value="Update user" name="submit" /> <input type="reset"
							class="btn btn-default" value="Reset" name="reset" />
						<form>
							<h1>${message }</h1>
				</div>
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- Footer -->
	<jsp:include page="../jsp/footer.jsp"></jsp:include>
</body>
<script>
	//getUserDetail();
	function getUserDetail() {
		var t = $.ajax({
			url : "http://localhost:8080/CarSale/admin/user-detail",
			type : "GET",
			dataType : "json",
			contentType : "application/json; charset=utf-8"
		});
		t.done(function(result) {
			$("#fullName").val(result.fullName);
			$("#phone").val(result.phone);
			$("#age").val(result.age);
			$("#email").val(result.email);
			$("#address").val(result.address);
		});
	}
	//validate form update
	function validateFormUpdate(){
		var fullName = document.getElementById("fullName").value;
		var age = document.getElementById("age").value;
		var address = document.getElementById("address").value;
		var phone = document.getElementById("phone").value;
		var email = document.getElementById("email").value;
		var regexUserName =/^[a-z0-9_.-@]{3,15}$/;
		var regexPassword= /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
		var regexAge=/^(?:1[01][0-9]|120|1[7-9]|[2-9][0-9])$/;//tuoi tu 17-120
		var regexPhone=/[0-9]{10}/;
		var regexEmail= /^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$/;
		var err="";
		if(fullName.includes("'")||fullName.includes("--")||fullName==""){
			alert("Fullname không được để trống và không được có kí tự ' hoặc --");
			err+=" fullName";
		}
		if(!regexAge.test(age)){
			alert("Age từ 17-120");
			err+=" age";
		}
		if(address.includes("'")||address.includes("--")||address==""){
			alert("Address không được để trống và không có kí tự ' hoặc --");
			err+=" address";
		}
		if(!regexPhone.test(phone)){
			alert("Số điện thoại phải có 10 chữ số");
			err+=" phone";
		}
		if(!regexEmail.test(email)){
			alert("địa chỉ email phải bắt đầu bằng 1 ký tự " +
					"+ địa chỉ email là tập hợp của các ký tự a-z, 0-9 " +
					"và có thể có các ký tự như dấu chấm, dấu gạch dưới " +
					"+ độ dài tối thiểu của email là 5, " +
					"độ dài tối đa là 32 + " +
					"tên miền của email có thể là tên miền cấp 1 or tên miền cấp 2");
			err+="email"
		}
		if(err.length>0) return false;
		return true;
	}
</script>

</html>