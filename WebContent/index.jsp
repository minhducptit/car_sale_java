<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8">
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link href="css/content.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Car-sale</title>
<link rel="stylesheet" href="./css/slider.css">
<link
	href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/33edc35265.js"></script>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<img src="./icon/gmail_header48px.png" /> <span
				style="color: aliceblue;">otohn@gmail.com</span> &nbsp; <img
				src="./icon/phone_52px.png" /> <span style="color: aliceblue;">+84
				39 559 2104</span>
		</div>
		<div class=" header-right ">
			<a class="active" href="listCarPrice.jsp">Bảng giá xe</a> <a
				href="carsales">Mua xe trả góp</a> <a href="#about ">Thư
				viện</a>
		</div>
	</div>
	<div class="navbar">
		<a href="index.jsp">Trang Chủ</a> <a href="new.jsp">Tin Tức</a>
		<div class="dropdown">
			<button class="dropbtn">
				Sản Phẩm <i class="fa fa-caret-down"></i>
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
							<a href="suv.jsp">BÁN TẢi</a>
						</h3>
						<a href="#">Hilux 2.4G 4x4MT</a> <a href="#">Hilux 2.4E 4×2 AT</a>
						<a href="#">Hilux 2.8G 4×4 AT</a>
					</div>
				</div>
			</div>
		</div>
		<a href="listCarPrice.jsp">Bảng giá xe</a> <a href="service.jsp">Dịch
			vụ</a> <a href="contact.jsp">Liên hệ</a>
	</div>

	<div class="w3-content w3-display-containner">
		<img src="./img/slide/slide1.jpg" width="100%" height="350px"
			class="slide" alt="#"> <img src="./img/slide/slide2.jpg"
			width="100%" height="350px" class="slide" alt="#"> <img
			src="./img/slide/slide3.jpg" width="100%" height="350px"
			class="slide" alt="#"> <img src="./img/slide/slide4.jpg"
			width="100%" height="350px" class="slide" alt="#">
		<button class="w3-button w3-black w3-display-left" onclick="plus(-1)">&#10094;</button>
		<button class="w3-button w3-black w3-display-right" onclick="plus(1)">&#10095;</button>
	</div>
	<div>
		<script>
			var index = 1;
			show(index);

			function plus(n) {
				show(index += n);

			}

			function show(n) {
				var i;
				var x = document.getElementsByClassName("slide");
				if (n > x.length)
					index = 1;
				if (n < 1)
					index = x.length;
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				x[index - 1].style.display = "block";

			}

			var myIndex = 0;
			carousel();

			function carousel() {
				var i;
				var x = document.getElementsByClassName("slide");
				for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";
				}
				myIndex++;
				if (myIndex > x.length) {
					myIndex = 1
				}
				x[myIndex - 1].style.display = "block";
				setTimeout(carousel, 2000); // Change image every 2 seconds
			}
		</script>
	</div>
	<div class="main-content">
		<div class="wrap">
			<div class="main-box">
				<div class="box_wrapper">
					<h1 id="suv">SUV</h1>
				</div>
				<div class="section group">
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car1.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Fortuner 2.4G 4×2 AT</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car2.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Toyota Rush 2018</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car3.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Fortuner 2.7V 4×2</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car4.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Fortuner 2.8V 4×4</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>

				<div class="box_wrapper">
					<h1 id="vios">VIOS</h1>
				</div>
				<div class="section group">
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car5.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios 1.5E (MT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car6.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios 1.5E (CVT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car7.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios G(CVT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car8.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Corolla Altis 2.0 Luxury</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="box_wrapper">
					<h1 id="vios">SEDAN</h1>
				</div>
				<div class="section group">
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car5.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios 1.5E (MT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car6.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios 1.5E (CVT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car7.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios G(CVT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car8.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Corolla Altis 2.0 Luxury</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<div class="box_wrapper">
					<h1 id="bantai">Bán tải</h1>
				</div>
				<div class="section group">
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car5.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios 1.5E (MT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car6.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios 1.5E (CVT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car7.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Vios G(CVT)</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<img src="./img/car8.jpg" alt="" class="ima" />
						<div class="grid_desc">
							<p class="title">Corolla Altis 2.0 Luxury</p>
							<p class="title1">Lorem ipsum dolor sitconsectetueradipis</p>
							<div class="price1" style="height: 19px;">
								<span class="reducedfrom">$66.00</span> <span class="actual">$12.00</span>
							</div>
						</div>
						<div class="Details">
							<a href="single.html"
								title="Lorem ipsum dolor sit amet, consect etuer" class="button">Chi
								tiết <span></span>
							</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
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
	<script>
		function myFunction() {
			var x = document.getElementById("myTopnav");
			if (x.className === "nav") {
				x.className += "styles";
			} else {
				x.className = "nav";
			}
		}
	</script>
</body>
</html>