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
	<link href="css/news.css" rel="stylesheet" type="text/css" />
	<link href="css/cartype.css" rel="stylesheet" type="text/css" />
	<meta charset="UTF-8">
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Car-sale</title>
	<link href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap" rel="stylesheet">
</head>

<body>
	<!-- Hearder -->
	<%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<!-- Header -->
	<jsp:include page="jsp/header.jsp"></jsp:include>

	<!-- Content -->
	<div class="container-news">
		<div class="container-top">
			<ul>
				<li><a href="index.jsp"> <span>home</span>
					</a> <span>|</span></li>
				<li><a href="new.jsp"><%=resourceBundle.getString("tintucmoi")%></a></li>
			</ul>
		</div>
		<div class="container-left">
			<div class="block block-news-event">
				<div div class="block-title">
					<h3>
						<b><%=resourceBundle.getString("tintucsukien")%></b>
					</h3>
				</div>
				<div class="block-content content-news-event">
					<ul>
						<li><a href="service.jsp"><%=resourceBundle.getString("dichvu")%></a></li>
						<li><a href="#"><%=resourceBundle.getString("kienthucoto")%></a></li>
						<li><a href="#"><%=resourceBundle.getString("luatgiaothong")%></a></li>
						<li><a href="new.jsp"><%=resourceBundle.getString("tintuc")%></a></li>
					</ul>
				</div>
			</div>
			<div class="block block-news-event">
				<div class="blankbox"></div>
			</div>
			<div class="block block-news-event">
				<div div class="block-title">
					<h3>
						<b><%=resourceBundle.getString("dongxe")%></b>
					</h3>
				</div>
				<div class="block-content content-news-event">
					<ul>
						<li><label class="checkbox-container">Fortuner <input type="checkbox" checked="checked"> <span
									class="checkmark"></span>
							</label></li>
						<li><label class="checkbox-container">Rush <input type="checkbox" checked="checked"> <span
									class="checkmark"></span>
							</label></li>
						<li><label class="checkbox-container">Land Cruiser <input type="checkbox" checked="checked">
								<span class="checkmark"></span>
							</label></li>
						<li><label class="checkbox-container">Prado <input type="checkbox" checked="checked"> <span
									class="checkmark"></span>
							</label></li>
						<li><label class="checkbox-container">Highlander <input type="checkbox" checked="checked"> <span
									class="checkmark"></span>
							</label></li>
					</ul>
				</div>
			</div>
			<div class="block block-access-statistics">
				<div div class="block-title">
					<h3>
						<b><%=resourceBundle.getString("thongketruycap")%></b>
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
							<li><%=resourceBundle.getString("luotngay")%><span>1000</span></li>
							<li><%=resourceBundle.getString("luotthang")%><span>30000</span></li>
							<li><%=resourceBundle.getString("tongluot")%><span>200221</span></li>
							<li><%=resourceBundle.getString("online")%><span>221</span></li>
							<li></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="main-content">
			<!-- <div class="wrap">
				<div class="main-box">
					<div class="box_wrapper">
						<h1 id="suv">SUV</h1>
					</div>
					<div class="section group">
						<div class="avacar">
							<img class="img" src="img\suvava.png" alt="" />
						</div>
						<div class="para">

							<p>SUV là viết tắt của Sport Utility Vehicle là một chiếc xe
								lớn, cao,chế tạo trên khung gầm chắc chắn, gồ ghề và sở hữu hệ
								dẫn động bốn bánh giúp bạn có thể đi bất cứ đâu.</p>

							<p>Thiết kế xe SUV của Toyota vuông vắn, gầm cao, động cơ
								mạnh thách thức mọi địa hình, nội thất rộng có thể chở từ 6 – 7
								người kể cả hành lý. Hệ thống 4 bánh khiến xe vượt qua mọi địa
								hình một cách dễ dàng và tận dụng được tối đa sức mạnh của động
								cơ.</p>
							<p>Shop chúng tôi tự hào đem đến cho khách hàng thông tin và
								các dịch vụ hỗ trợ đầy đủ nhất cho dòng xe SUV của Toyota.</p>

						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div> -->

			<div class="wrap">
				<div class="main-box">
					<div class="box_wrapper">
						<h1 id="suv"><%=resourceBundle.getString("sanpham")%></h1>
					</div>
					<div id="listCar"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<!-- Footer -->
	<jsp:include page="jsp/footer.jsp"></jsp:include>
</body>
<script>
	function getParameterByName(name) {
		var results = new RegExp("[\?&]" + name + "=([^&#]*)").exec(
			window.location.href
		);
		if (results == null) {
			return null;
		}
		return decodeURI(results[1]) || 0;
	}
	var category = getParameterByName("category");
	console.log("category", category);
	getCarByCategory(category);
	function getCarByCategory(category) {
		var t = $.ajax({
			url: "http://localhost:8080/CarSale/api/trang-chu",
			type: "GET",
			dataType: "json",
			contentType: "application/json; charset=utf-8"
		});
		t.done(function (result) {
			//Show list car by category
			var car = findCarByCategory(category, result);
			var row = Math.ceil(car.length / 4);
			var listCarByCategory = '';
			for (let i = 0; i < row - 1; i++) {
				let listCarRow = [];
				for (let j = 0; j < 4; j++) {
					listCarRow.push(car[i * 4 + j]);
				}
				listCarByCategory += content(listCarRow);
			}
			let listCarRowEnd = [];
			for (let i = 4 * (row - 1); i < car.length; i++) {
				listCarRowEnd.push(car[i]);
			}
			listCarByCategory += content(listCarRowEnd);
			$("#listCar").append(listCarByCategory);
		});
	}
	function findCarByCategory(key, result) {
		var strKey = '';
		strKey += key;
		let car = result.filter(result => {
			return result.carCategory === strKey;
		});
		return car;
	}
	function content(array) {
		console.log("Size Aray", array)
		var content = '';
		content += '<div class="section group">';

		for (let i = 0; i < array.length; i++) {
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
				'<a href="cardetail.jsp?id=' + array[i].carId + '" class="button"><%=resourceBundle.getString("chitiet")%></a>' +
				'</div>' +
				'</div>';
		}
		content += '<div class="clear"></div>' +
			'</div>';
		return content;
	}
</script>

</html>