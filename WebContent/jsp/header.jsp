<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ResourceBundle"%>
<%
  ResourceBundle resourceBundle =
      ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
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
					<div id="categorySuv"></div>
				</div>
				<div class="column">
					<div id="categoryDaDung"></div>
				</div>
				<div class="column">
					<div id="categorySedan"></div>
				</div>
				<div class="column">
					<div id="categoryBanTai"></div>
				</div>
			</div>
		</div>
	</div>
	<a href="listCarPrice.jsp"><%=resourceBundle.getString("banggiaxe")%></a>
	<a href="service.jsp"><%=resourceBundle.getString("dichvu")%></a> <a
		href="contact.jsp"><%=resourceBundle.getString("contact")%></a>
</div>
<script>
	test();
	function test() {
		var t = $.ajax({
			url: "http://localhost:8080/CarSale/api/trang-chu",
			type: "GET",
			dataType: "json",
			contentType: "application/json; charset=utf-8"
		});
		t.done(function (result) {
			//Show list car SUV
			var carSuv = findCarByCategory("SUV", result);
			var categorySuv = categoryContent(carSuv);
			$("#categorySuv").append(categorySuv);
			//Show List Da Dung
			var carDaDung = findCarByCategory("ĐA DỤNG", result);
			var categoryDaDung = categoryContent(carDaDung);
			$("#categoryDaDung").append(categoryDaDung);
			//Show List car Sedan
			var carSedan = findCarByCategory("SEDAN", result);
			var categorySedan = categoryContent(carSedan);
			$("#categorySedan").append(categorySedan);
			//Show List Ban Tai
			var carBanTai = findCarByCategory("BÁN TẢI", result);
			var categoryBanTai = categoryContent(carBanTai);
			$("#categoryBanTai").append(categoryBanTai);

		});
	}
	function findCarByCategory(key, result) {
		let car = result.filter(result => {
			return result.carCategory === key;
		});
		return car;
	}
	function categoryContent(array) {
		var content = '<h3>' +
			'<a href="suv.jsp?category=' + array[0].carCategory + '">' + array[0].carCategory + '</a>' +
			'</h3>';
		for (var i = 0; i < 3; i++) {
			content += '<a href="cardetail.jsp?id=' + array[i].carId + '">' + array[i].carName + '</a>';
		}
		return content;
	}
</script>