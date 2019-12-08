<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ResourceBundle"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<link href="css/styles.css" rel="stylesheet" type="text/css" />
	<link href="css/cost_estimate.css" rel="stylesheet" type="text/css" />
	<link href="css/content.css" rel="stylesheet" type="text/css" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Car-sale</title>
	<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
</head>

<body>
	<%
	  ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<!-- Header -->
	<jsp:include page="jsp/header.jsp"></jsp:include>
	<!--Content-->
	<div class="container">
		<div class="title-page"><%=resourceBundle.getString("costestimates")%></div>
		<div class="main-block">
			<br>
			<p><%=resourceBundle.getString("costestimates_content")%></p>
			<br>
			<div class="block-title">
				<div class="title-left"><%=resourceBundle.getString("select_car")%></div>
				<div class="title-right">
					<span id="price">0</span>
				</div>
			</div>
			<br>
			<div id="list-car"></div>
			<br>
			<div class="list-car"></div>
			<div class="title-left"><%=resourceBundle.getString("register_place")%></div>
			<br>
			<div id="list-city"></div>
			<br> <br>
			<div class="title-left"><%=resourceBundle.getString("fee_required")%></div>
			<br>
			<div style="display: flex; justify-content: space-between; width: 100%">
				<div><%=resourceBundle.getString("tax")%></div>
				<div>
					<span id="feeTax">0</span>
				</div>
			</div>
			<br>
			<div style="display: flex; justify-content: space-between; width: 100%">
				<div><%=resourceBundle.getString("registration_fees")%></div>
				<div>
					<span id="feeRegistration">0</span>
				</div>
			</div>
			<br>
			<div style="display: flex; justify-content: space-between; width: 100%">
				<div><%=resourceBundle.getString("road_tolls")%></div>
				<div>
					<span id="feeRoadFee">0</span>
				</div>
			</div>
			<br>
			<div style="display: flex; justify-content: space-between; width: 100%">
				<div><%=resourceBundle.getString("civil_insurance_premiums")%></div>
				<div>
					<span id="feeInsurrance">0</span>
				</div>
			</div>
			<br>
			<div style="display: flex; justify-content: space-between; width: 100%">
				<div><%=resourceBundle.getString("license_plate_fees")%>P
				</div>
				<div>
					<span id="feeLicensePlate">0</span>
				</div>
			</div>
			<br>
			<div class="title-left"><%=resourceBundle.getString("voluntary_fee")%></div>
			<br>
			<p><%=resourceBundle.getString("votuntary_fee_content")%></p>
			<br>
			<div class="block-title">
				<div class="title-left"><%=resourceBundle.getString("total_fee")%></div>
				<div class="title-right">
					<span id="totalFee">0</span>
				</div>
			</div>
			<br>
			<div class="block-title">
				<div class="title-left"><%=resourceBundle.getString("total_fee_car")%></div>
				<div class="title-right">
					<span id="total">0</span>
				</div>
			</div>
			<br>
		</div>
		<br>
		<quote> <span
				style="color: red"><%=resourceBundle.getString("note")%></span>:<%=resourceBundle.getString("note_fee_content")%>
		</quote>
	</div>
	<!-- Footer -->
	<jsp:include page="jsp/footer.jsp"></jsp:include>
	<!-- Get List car -->
	<script>
		loadCbCar();

		function loadCbCar() {
			var t = $.ajax({
				url: "http://localhost:8080/CarSale/api/list-price",
				type: "GET",
				dataType: "json",
				contentType: "application/json; charset=utf-8"
			});
			t
				.done(function (result) {
					var content = '<div>'
						+ '<select class="custom-select" id="selectCar" onchange="selectCar()">'
						+ '<option value="0" onchange="selectCar()"><%=resourceBundle.getString("option_car")%></option>> ';
					for (var i = 0; i < result.length; i++) {
						var value = result[i].carPrice;
						content += '<option value="' + value + '">'
							+ result[i].carName + '</option>';
					}
					content += '</select>' + '</div>'
					$("#list-car").append(content);

				});
		}
		loadCbCity();

		function loadCbCity() {
			var t = $.ajax({
				url: "http://localhost:8080/CarSale/api/city-fee",
				type: "GET",
				dataType: "json",
				contentType: "application/json; charset=utf-8"
			});
			t
				.done(function (result) {
					var content = '<div>'
						+ '<select class="custom-select" id="selectCity" onchange="selectCity()">'
						+ '<option value="0"><%=resourceBundle.getString("option_registation")%></option>';
					for (var i = 0; i < result.length; i++) {
						var tax = result[i].tax;
						var registration = result[i].registration;
						var roadFee = result[i].roadFee;
						var insurrance = result[i].insurrance;
						var licensePlate = result[i].licensePlate;
						var fee = [tax, registration, roadFee, insurrance,
							licensePlate];
						content += '<option value="' + fee + '">'
							+ result[i].cityName + '</option>';
					}
					content += '</select>' + '</div>'
					$("#list-city").append(content);

				});
		}

		function selectCar() {
			var price = document.getElementById("selectCar").value;
			document.getElementById("price").innerHTML = (price * 1.0)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
		}

		function selectCity() {
			var fee = document.getElementById("selectCity").value;
			var fee = fee.split(",");
			console.log(fee);
			var price = document.getElementById("selectCar").value;
			document.getElementById("feeTax").innerHTML = (fee[0] * price)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
			document.getElementById("feeRegistration").innerHTML = (fee[1] * 1.0)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
			document.getElementById("feeRoadFee").innerHTML = (fee[2] * 1.0)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
			document.getElementById("feeInsurrance").innerHTML = (fee[3] * 1.0)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
			document.getElementById("feeLicensePlate").innerHTML = (fee[4] * 1.0)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
			document.getElementById("totalFee").innerHTML = (fee[0] * price
				+ fee[1] * 1.0 + fee[2] * 1.0 + fee[3] * 1.0 + fee[4] * 1.0)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
			document.getElementById("total").innerHTML = (fee[0] * price
				+ fee[1] * 1.0 + fee[2] * 1.0 + fee[3] * 1 + fee[4] * 1.0 + price * 1.0)
				.toLocaleString('it-IT', {
					style: 'currency',
					currency: 'VND'
				});
		}
	</script>
</body>

</html>