<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ResourceBundle"%>

<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="UTF-8">
	<link href="css/styles.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<link href="css/content.css" rel="stylesheet" type="text/css" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Car-sale</title>
	<link rel="stylesheet" href="./css/slider.css">
	<link href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap" rel="stylesheet">
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

	<div class="w3-content w3-display-containner">
		<img src="img/slide/slide1.jpg" width="100%" height="350px" class="slide" alt="#">
		<img src="img/slide/slide2.jpg" width="100%" height="350px" class="slide" alt="#"> <img
			src="img/slide/slide3.jpg" width="100%" height="350px" class="slide" alt="#">
		<img src="img/slide/slide4.jpg" width="100%" height="350px" class="slide" alt="#">
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
	<!-- Content -->
	<div class="main-content">
		<div class="wrap">
			<div class="main-box">
				<!-- List Suv -->
				<div id="listSuv"></div>
				<!-- List Da Dung -->
				<div id="listDaDung"></div>
				<!-- List Sedan -->
				<div id="listSedan"></div>
				<!-- List Ban Tai -->
				<div id="listBanTai"></div>
			</div>
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
					<li><a href="#" style="opacity: 1;"> <img src="images/follow_icon.png" alt="">
						</a></li>
					<li><a href="#" style="opacity: 1;"> <img src="img/follow_icon1.png" alt="">
						</a></li>
					<li><a href="#" style="opacity: 1;"> <img src="img/follow_icon2.png" alt="">
						</a></li>
					<li><a href="#" style="opacity: 1;"> <img src="img/follow_icon3.png" alt="">
						</a></li>
					<li><a href="#" style="opacity: 1;"> <img src="img/follow_icon4.png" alt="">
						</a></li>
					<li><a href="#" style="opacity: 1;"> <img src="img/follow_icon5.png" alt="">
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
	<script type="text/javascript">
		test();
		function test() {
			var t = $.ajax({
				url: "http://localhost:8080/CarSale/api/trang-chu",
				type: "GET",
				dataType: "json",
				contentType: "application/json; charset=utf-8"
			});
			t.done(function (result) {
				console.log(result);
				//Show list car SUV
				var carSuv = findCarByCategory("SUV", result);
				var suv = content(carSuv);
				$("#listSuv").append(suv);
				//Show List Da Dung
				var carDaDung = findCarByCategory("ĐA DỤNG", result);
				var daDung = content(carDaDung);
				$("#listDaDung").append(daDung);
				//Show List car Sedan
				var carSedan = findCarByCategory("SEDAN", result);
				var sedan = content(carSedan);
				$("#listSedan").append(sedan);
				//Show List Ban Tai
				var carBanTai = findCarByCategory("BÁN TẢI", result);
				var banTai = content(carBanTai);
				$("#listBanTai").append(banTai);

			});
		}
		function findCarByCategory(key, result) {
			let car = result.filter(result => {
				return result.carCategory === key;
			});
			return car;
		}
		function content(array) {
			var content = '';
			content += '<div class="box_wrapper">' +
				'<h1 id="suv">' + array[0].carCategory + '</h1>' +
				'</div>' +
				'<div class="section group">';
			var size;
			if (array.length > 4) {
				size = 4;
			} else {
				size = array.length;
			}
			for (let i = 0; i < size; i++) {
				content += '<div class="col_1_of_4 span_1_of_4">' +
					'<img src="' + array[i].listImage[0].imageUrl + '" alt="" class="ima" />' +
					'<div class="grid_desc">' +
					'<p class="title">' + array[i].carName + "</p>" +
					'<p class="title1">' + array[i].carDes + '</p>' +
					'<div class="price1" style="height: 19px;">' +
					'<span class="reducedfrom">' + (array[i].carPrice).toLocaleString('it-IT', { style: 'currency', currency: 'VND' }) + '</span>' +
					'</div>' +
					'</div>' +
					'<div class="Details">' +
					'<a' +
					' href="cardetail.jsp?id=' + array[i].carId + '"' +
					'title="Lorem ipsum dolor sit amet, consect etuer"' +
					'class="button">' +
					'<%=resourceBundle.getString("chitiet")%>' +
					'</a>' +
					'</div>' +
					'</div>';
			}
			content += '<div class="clear"></div>' +
				'</div>';
			return content;
		}
	</script>
</body>

</html>