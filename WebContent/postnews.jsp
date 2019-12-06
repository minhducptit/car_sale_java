<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ResourceBundle"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href="css/abc.css" rel="stylesheet" type="text/css" />
<link href="css/content.css" rel="stylesheet" type="text/css" />
<link href="css/news.css" rel="stylesheet" type="text/css" />

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Tin tức</title>
<link rel="stylesheet" href="./css/slider.css">
<link
	href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/33edc35265.js"></script>
<!-- crossorigin="anonymous" -->
</head>
<body>
	<!-- Hearder -->
	<%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<div class="header">
		<div class="header-left">
			<img src="./icon/gmail_header48px.png" /> <span
				style="color: aliceblue;"><%=resourceBundle.getString("email")%></span>
			&nbsp; <img src="./icon/phone_52px.png" /> <span
				style="color: aliceblue;"><%=resourceBundle.getString("phone")%></span>
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
						<a href="#">Vios 1.5E (MT)</a> <a href="#">Vios G(CVT)</a> <a href="#">Vios 1.5E (CVT)</a>
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
	<!--content news-->
	<div class="container-news">
		<div class="container-top">
			<ul>
				<li><a href="index.jsp"> <span>home</span>
				</a> <span>|</span></li>
				<li><a href="news.jsp">Tin tức</a></li>
			</ul>
		</div>
		<div class="container-left">
			<div class="block block-news-event">
				<div div class="block-title">
					<h3>
						<b>Tin tức sự kiện</b>
					</h3>
				</div>
				<div class="block-content content-news-event">
					<ul>
						<li><a href="service.jsp">Dịch Vụ</a></li>
						<li><a href="#">Kiến thức ô tô</a></li>
						<li><a href="#">Luật giao thông</a></li>
						<li><a href="news.jsp">Tin tức</a></li>
					</ul>
				</div>
			</div>
			<div class="block block-support-online">
				<div class="block-title">
					<h3>
						<b>Hỗ trợ trực tuyến</b>
					</h3>
				</div>
				<div class="block-content content-support-online">
					<ul>
						<li><a href="#"><img src="img/slide/slide2.jpg"></a></li>
						<li><i>
								<h3>MS LTW</h3>
						</i></li>
						<li>Hotline: 09999999</li>
						<li>carsale@carsale.com</li>
					</ul>

				</div>
			</div>
			<div class="block block-news">
				<div div class="block-title">
					<h3>
						<b>Tin tức mới</b>
					</h3>
				</div>
				<div class="block-content content-news">
					<div>
						<a href="#"><img src="img/car6.jpg" alt="hot new"></a>
						<p>Toyota triển khai chương trình ưu đãi cho khách hàng mua xe
							toyota giá 1 tỷ trở lên</p>
						<p class="time">2019-09-04</p>
					</div>
					<div>
						<a href="#"><img src="img/car6.jpg" alt="hot new"></a>
						<p>Toyota triển khai chương trình ưu đãi cho khách hàng mua xe
							toyota giá 1 tỷ trở lên</p>
						<p class="time">2019-09-04</p>
					</div>
					<div>
						<a href="#"><img src="img/car6.jpg" alt="hot new"></a>
						<p>Toyota triển khai chương trình ưu đãi cho khách hàng mua xe
							toyota giá 1 tỷ trở lên</p>
						<p class="time">2019-09-04</p>
					</div>
				</div>
			</div>
			<div class="block block-access-statistics">
				<div div class="block-title">
					<h3>
						<b>Thống kê truy cập</b>
					</h3>
				</div>
				<div class="block-content content-access-statistics">
					<div class="number-of-access">
						<div class="number">1</div>
						<div class="number">2</div>
						<div class="number">3</div>
						<div class="number">4</div>
					</div>

					<div class="statistics">
						<ul>
							<li>Tổng số lượt truy cập hôm nay: <span>1000</span></li>
							<li>Tổng số lượt truy cập tháng này: <span>30000</span></li>
							<li>Tổng số lượt truy cập : <span>200221</span></li>
							<li>Đang online : <span>221</span></li>
							<li></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container-right">
			<div class="post">
				<div class="header-post">
					<h3>TOYOTA TRIỂN KHAI CHƯƠNG TRÌNH ƯU ĐÃI DÀNH CHO KHÁCH HÀNG
						MUA XE COROLLA ALTIS, FORTUNER VÀ INNOVA</h3>
					<p class="time">2019-10-05</p>
					<a href="#"><img src="img/car6.jpg" alt="image car"
						class="center"></a>
				</div>
				<div class="content-post">
					<p>Chương trình ưu đãi dành cho khách hàng thanh toán đầy đủ
						khi mua xe Corolla Altis từ ngày 03/9/2019 đến 30/9/2019 và
						Fortuner, Innova từ ngày 03/9/2019 đến 31/10/2019 tại hệ thống đại
						lý Toyota trên toàn quốc. Từ ngày 03/9/2019 – Công ty Ô tô Toyota
						Việt Nam (TMV) cùng hệ thống đại lý Toyota trên toàn quốc thực
						hiện chương trình ưu đãi dành cho khách hàng thanh toán đầy đủ khi
						mua xe Corolla Altis (tất cả các phiên bản) từ ngày 03/9/2019 đến
						30/9/2019 và Fortuner phiên bản 2.4 máy dầu một cầu số tự động
						(2.4 AT 4×2) và phiên bản 2.4 máy dầu một cầu số sàn (2.4 MT 4×2),
						Innova phiên bản số sàn (E 2.0 MT) từ ngày 03/9/2019 đến
						31/10/2019. Thông qua chương trình, TMV muốn mang đến nhiều hơn
						nữa lợi ích cho khách hàng nhằm hướng tới sự hài lòng cao nhất.</p>
				</div>
				<div class="footer-post">
					<br>
					<p>Để biết thêm thông tin chi tiết, xin vui lòng liên hệ các
						Đại lý Toyota trên toàn quốc hoặc truy cập website:</p>
					<br>
					<p>http://otohn.com</p>
					<br>
					<p>
						<b>WEB BÁN Ô TÔ HN</b>
					</p>
					<p>
						<b>- Địa chỉ: </b>Học viện Công nghệ Bưu chính viễn thông
					</p>
					<p>
						<b>- Hotline: 03456789</b>
					</p>
					<p>
						<i>Đừng ngần ngại liên hệ với chúng tôi trước để được phục vụ
							tốt nhất!</i>
					</p>
					<p>
						<img src="icon/tags.png" class="icon"><b>Tags: </b>No tag
					</p>
				</div>
				<div class="block-comment">
					<form>
						<h3>Leave Comments</h3>
						<b>Name</b><span style="color: red">(*)</span> <input type="text"
							name="name"> <b>Email</b><span style="color: red">(*)</span>
						<input type="text" name="email"> <b>Website</b> <input
							type="text" name="website"> <b>Comment</b><span
							style="color: red">(*)</span> <input type="text" name="comment"
							id="textArea"> <input type="button" name="submit"
							value="Post commnet" class="submit">
					</form>
				</div>
			</div>

		</div>
		<div class="clear"></div>
	</div>
	<!-- Footer -->
	<footer>
		<div class="footer-top">
			<div class="footer-grid left-grid">
				<h3>Top xem nhiều nhất</h3>
				<ul>
					<li><a href="#">SUV</a></li>
					<li><a href="#">SEDAN</a></li>
					<li><a href="#">Bán tải</a></li>
					<li><a href="#">VIOS</a></li>
				</ul>
			</div>
			<div class="footer-grid center-grid">
				<h3>Về chúng tôi</h3>
				<div class="f_menu">
					<ul>
						<li>Địa chỉ: Học viện công Nghệ Bưu chính viễn thông</li>
						<li>Hotline: 0973.631.248</li>
						<li><i> Đừng ngần ngại liên hệ với chúng tôi trước để
								được phục vụ tốt nhất </i></li>
					</ul>
				</div>
			</div>
			<div class="footer-grid right-grid">
				<h3>Thông tin liên hệ</h3>
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
				<p>Mọi góp ý xin gọi: 03456789</p>
				<span> <a href="ltwthaydung@carssale.com">support(at)carssale.com</a>
				</span>
			</div>
			<div class="clear"></div>
		</div>
		<div class="copy-right">
			<p>
				Bản quyền &copy; 2019 Car Sale. Đã đăng ký bản quyền | Thiết kê bởi
				<a href="#"> Nhom LTW </a>
			</p>
		</div>
	</footer>
</body>
</html>