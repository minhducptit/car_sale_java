<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ResourceBundle"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link href="css/styles.css" rel="stylesheet" type="text/css" />
	<link href="css/abc.css" rel="stylesheet" type="text/css" />
	<link href="css/content.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Car-sale</title>
	<link rel="stylesheet" href="./css/slider.css">
	<link href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap" rel="stylesheet">
</head>

<body>
	<!-- Hearder -->
	<%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<!-- Header -->
	<jsp:include page="jsp/header.jsp"></jsp:include>
	<!--Content Contact-->
	<div class="container">
		<div style="text-align: left">
			<h1 style="text-align: center">Contact Us</h1>
			<p>Địa chỉ: Xã Quất Lưu- Huyện Bình Xuyên- Tỉnh Vĩnh Phúc</p>
			<p>Điện thoại: 0973.631.248</p>
		</div>
		<div class="cot">
			<div class="contact">
				<img src="./img/address.jpg" style="width: 90%">
			</div>
			<div class="contact">
				<form action="/action_page.php">
					<label for="fname">First Name</label> <input type="text" id="fname" name="firstname"
						placeholder="Your name.."> <label for="lname">Last Name</label> <input type="text" id="lname"
						name="lastname" placeholder="Your last name.."> <label for="country">Country</label>&nbsp;
					<select id="country" name="country">
						<option value="vietnam">Việt Nam</option>
						<option value="korea">Korea</option>
						<option value="usa">USA</option>
					</select> <br> <br> <label for="subject">Subject</label>
					<textarea id="subject" name="subject" placeholder="Write something.."
						style="height: 170px"></textarea>
					<input type="submit" value="Submit">
				</form>
			</div>
		</div>

	</div>
	<!-- Footer -->
	<jsp:include page="jsp/footer.jsp"></jsp:include>

</body>

</html>