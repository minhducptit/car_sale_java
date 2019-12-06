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
</head>

<body>
	<%
	  ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>

	<!-- Header -->
	<jsp:include page="jsp/header.jsp"></jsp:include>
	<!-- Slider -->
	<div class="w3-content w3-display-containner">
		<img src="img/slide/slide1.jpg" width="100%" height="350px" class="slide" alt="#"> <img
			src="img/slide/slide2.jpg" width="100%" height="350px" class="slide" alt="#"> <img
			src="img/slide/slide3.jpg" width="100%" height="350px" class="slide" alt="#"> <img
			src="img/slide/slide4.jpg" width="100%" height="350px" class="slide" alt="#">
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
	<jsp:include page="jsp/footer.jsp"></jsp:include>

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

	<!-- Get List car -->
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