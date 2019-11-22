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
<link href='https://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<script src="https://kit.fontawesome.com/33edc35265.js"></script>
</head>
<body>
	<%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<div class="header">
		<div class="header-left">
			<img src="./icon/gmail_header48px.png" /> <span
				style="color: aliceblue;"><%=resourceBundle.getString("email")%></span>
			&nbsp; <img src="./icon/phone_52px.png" /> <span
				style="color: aliceblue;">+84 39 559 2104</span>
		</div>
		<div class=" header-right ">
			<a class="active" href="listCarPrice.jsp"><%=resourceBundle.getString("banggiaxe")%></a>
			<a href="carsales"><%=resourceBundle.getString("muaxetragop")%></a> <a
				href="#about "><%=resourceBundle.getString("thuvien")%></a>
		</div>
	</div>
	<div class="navbar">
		<a href="index.jsp"><%=resourceBundle.getString("home")%></a> <a
			href="new.jsp"><%=resourceBundle.getString("tintuc")%></a>
		<div class="dropdown">
			<button class="dropbtn">
				<%=resourceBundle.getString("sanpham")%><i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<div class="row">
					<div class="column">
						<h3>
							<a href="suv.jsp">SEDAN</a>
						</h3>
						<a href="#">Corolla Altis 2.0 Luxury</a> <a href="#">Corolla
							Altis 1.8E (MT)</a> <a href="#">Corolla Altis 2.0V Sport</a>
					</div>
					<div class="column">
						<h3>
							<a href="suv.jsp">SUV</a>
						</h3>
						<a href="#">Fortuner 2.4G 4×2 AT</a> <a href="#">Fortuner 2.7V
							4×2</a> <a href="#">Land Cruiser Prado VX</a>
					</div>
					<div class="column">
						<h3>
							<a href="suv.jsp">VOIS</a>
						</h3>
						<a href="#">Vios 1.5E (MT)</a> <a href="#">Vios G(CVT)</a> <a
							href="#">Vios 1.5E (CVT)</a>
					</div>
					<div class="column">
						<h3>
							<a href="suv.jsp"><%=resourceBundle.getString("xebantai")%></a>
						</h3>
						<a href="#">Hilux 2.4G 4x4MT</a> <a href="#">Hilux 2.4E 4×2 AT</a>
						<a href="#">Hilux 2.8G 4×4 AT</a>
					</div>
				</div>
			</div>
		</div>
		<a href="listCarPrice.jsp"><%=resourceBundle.getString("banggiaxe")%></a>
		<a href="service.jsp"><%=resourceBundle.getString("dichvu")%></a> <a
			href="contact.jsp"><%=resourceBundle.getString("contact")%></a>
	</div>
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
				<input type="number" id="tienvay" min="1" max="1000000000"
					placeholder="Nhập số tiền vay (vnd)">&nbsp; <input
					type="number" id="tienvaypt" min="1" max="100"
					placeholder="Nhập số tiền vay tính theo (%)"> <input
					type="number" id="laixuatvay" min="1" max="100"
					placeholder="Nhập lãi xuất vay (%/thang)">&nbsp; <input
					type="number" id="thoihanvay" min="1" max="1000000"
					placeholder="Nhập thời hạn vay (tháng)">
			</form>
		</div>
		<br>
		<div class="thanhtoan">
			<input id="sub" type="submit" value="Submit"> <input id="res"
				type="reset" value="Clear">
		</div>

	</div>
	<!-- Footer -->
	<footer>
		<div class="footer-top">
			<div class="footer-grid left-grid">
				<h3><%=resourceBundle.getString("xemnhieunhat")%></h3>
				<ul>
					<li><a href="#">SUV</a></li>
					<li><a href="#">SEDAN</a></li>
					<li><a href="#"><%=resourceBundle.getString("xebantai")%></a></li>
					<li><a href="#">VIOS</a></li>
				</ul>
			</div>
			<div class="footer-grid center-grid">
				<h3><%=resourceBundle.getString("aboutus")%></h3>
				<div class="f_menu">
					<ul>
						<li><%=resourceBundle.getString("diachi")%>: Học viện công
							Nghệ Bưu chính viễn thông</li>
						<li>Hotline: 0973.631.248</li>
						<li><i><%=resourceBundle.getString("loinhankhachhang")%></i></li>
					</ul>
				</div>
			</div>
			<div class="footer-grid right-grid">
				<h3><%=resourceBundle.getString("contactinfo")%></h3>
				<ul class="follow_icon">
					<li><a href="#" style="opacity: 1;"> <img
							src="images/follow_icon.png" alt="">
					</a></li>
					<li><a href="#" style="opacity: 1;"> <img
							src="img/follow_icon1.png" alt="">
					</a></li>
					<li><a href="#" style="opacity: 1;"> <img
							src="img/follow_icon2.png" alt="">
					</a></li>
					<li><a href="#" style="opacity: 1;"> <img
							src="img/follow_icon3.png" alt="">
					</a></li>
					<li><a href="#" style="opacity: 1;"> <img
							src="img/follow_icon4.png" alt="">
					</a></li>
					<li><a href="#" style="opacity: 1;"> <img
							src="img/follow_icon5.png" alt="">
					</a></li>
				</ul>
				<p><%=resourceBundle.getString("gopyxingoi")%>: 03456789
				</p>
				<span> <a href="https://www.facebook.com/otovinhphuctoyota/">ltwthaydung@carssale.com</a>
				</span>
			</div>
			<div class="clear"></div>
		</div>
		<div class="copy-right">
			<p>
				<%=resourceBundle.getString("copyright")%>
				&copy; 2019 Car Sale.|
				<%=resourceBundle.getString("designby")%>
				<a href="#"> Nhom LTW </a>
			</p>
		</div>
	</footer>

</body>
</html>