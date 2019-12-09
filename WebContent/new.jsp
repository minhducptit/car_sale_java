<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ResourceBundle"%>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="UTF-8">
	<link href="css/styles.css" rel="stylesheet" type="text/css" />
	<link href="css/news.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<link href="css/content.css" rel="stylesheet" type="text/css" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Car-sale</title>
</head>

<body>
	<!-- Hearder -->
	<%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<!-- Header -->
	<jsp:include page="jsp/header.jsp"></jsp:include>
	<!--content new-->
	<div class="container-news">
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
			<div class="block block-support-online">
				<div class="block-title">
					<h3>
						<b><%=resourceBundle.getString("hotrotructuyen")%></b>
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
						<b><%=resourceBundle.getString("tintucmoi")%></b>
					</h3>
				</div>
				<div class="block-content content-news">
					<div id="listNewHot"></div>
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
		<div class="container-right">
			<div class="block-categories">
				<h3><%=resourceBundle.getString("chuyenmuc")%></h3>
			</div>
			<div id="listNews"></div>
		</div>
		<div class="clear"></div>
	</div>
	<!-- Footer -->
	<jsp:include page="jsp/footer.jsp"></jsp:include>
	<script>
		loadNew();
		function loadNew() {
			var t = $.ajax({
				url: "http://localhost:8080/CarSale/api/list-news",
				type: "GET",
				dataType: "json",
				contentType: "application/json; charset=utf-8"
			});
			t.done(function (result) {
				//Show list news
				var content = '';
				for (var i = 0; i < result.length; i++) {
					content += '<div class="image-text">'
						+ '<div class="image">' + '<a href="post.jsp?id=' + result[i].postId + '" ><img src=' + result[i].postUrlImg
						+ ' alt="imageCar"></a>'
						+ '</div>'
						+ '<div class="text">'
						+ '<a href="post.jsp?id=' + result[i].postId + '">'
						+ '<p>'
						+ '<h4>'
						+ result[i].postTitle
						+ '</h4>' + '</p>'
						+ '</a>'
						+ '<p class="time">'
						+ result[i].timeUpdate
						+ '</p>'
						+ '<p class="content">'
						+ result[i].postDes
						+ '</p>' + '</div>'
						+ '</div>'
						+ '<div class="see-more">'
						+ '<a href="post.jsp?id=' + result[i].postId + '">'
						+ '<%=resourceBundle.getString("xemthem")%>' + '</a>'
						+ '</div>';
					;
				}
				$("#listNews").append(content);
			});
		}
		loadNewHot();
		function loadNewHot() {
			var t = $.ajax({
				url: "http://localhost:8080/CarSale/api/list-news",
				type: "GET",
				dataType: "json",
				contentType: "application/json; charset=utf-8"
			});
			t.done(function (result) {
				//Show list news hot
				var content = '';
				for (var i = 0; i < 3; i++) {
					content += '<div>'
						+ '<a href="post.jsp?id=' + result[i].postId + '"><img src=' + result[i].postUrlImg + ' alt="hot new"></a>'
						+ '<p>' + result[i].postTitle + '</p>'
						+ '<p class="time">' + result[i].timeUpdate + '</p>'
						+ '</div>';
				}
				$("#listNewHot").append(content);
			});
		}
	</script>
</body>

</html>