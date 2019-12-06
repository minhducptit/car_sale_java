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

	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Car-sale</title>
	<link rel="stylesheet" href="./css/slider.css">
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
</head>

<body>
	<%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<!-- Header -->
	<jsp:include page="jsp/header.jsp"></jsp:include>
	<!--Content-->
	<div class="calsale">
		<div class="carsales-1">
			<h1 style="color: aliceblue">TÍNH MUA XE TRẢ GÓP</h1>
			<p style="color: aliceblue">Mời Anh / Chị chọn các mẫu xe Toyota
				cần quan tâm và số tiền vay (Chưa bao gồm giảm trừ Khuyến Mại) bên
				dưới</p>
		</div>
		<div class="calsales-2">
			<form action="/carsales.jsp">
				<select id="country" name="country">
					<option value="0">Chọn xe bạn muốn mua</option>
					<option value="fotuner">Fortuner 2.4G 4×2 AT</option>
					<option value="rush">Toyota Rush 2018</option>
					<option value="vios">Vios 1.5E (MT)</option>
					<option value="corolla">Corolla Altis 1.8G (CVT)</option>
				</select>&nbsp; <input type="text" id="vnd" placeholder="0 VND" disabled>
				<input type="number" id="tienvay" min="1" max="1000000000" placeholder="Nhập số tiền vay (vnd)">&nbsp;
				<input type="number" id="tienvaypt" min="1" max="100" placeholder="Nhập số tiền vay tính theo (%)">
				<input type="number" id="laixuatvay" min="1" max="100" placeholder="Nhập lãi xuất vay (%/thang)">&nbsp;
				<input type="number" id="thoihanvay" min="1" max="1000000" placeholder="Nhập thời hạn vay (tháng)">
			</form>
		</div>
		<br>
		<div class="thanhtoan">
			<input id="sub" type="submit" value="Submit"> <input id="res" type="reset" value="Clear">
		</div>

	</div>
	<!-- Footer -->
	<jsp:include page="jsp/footer.jsp"></jsp:include>

</body>

</html>