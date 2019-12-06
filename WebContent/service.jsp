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
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Dịch vụ</title>
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
	<jsp:include page="jsp/header.jsp"></jsp:include>
	<!--content news-->
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
				<h3><%=resourceBundle.getString("chuyenmucdichvu")%></h3>
			</div>
			
			<div class="clear"></div>
			<div id="addservice"></div>
			<!--test-->
			
			<script type="text/javascript">
				loadService();
				
				function loadService() {
					var t = $.ajax({
						url : "http://localhost:8080/CarSale/api/list-service",
						type : "GET",
						dataType : "json",
						contentType : "application/json; charset=utf-8"
					});
					t.done(function(result) {
						//Show list news
						var content = '';
					for (let i = 0; i < result.length; i++) {
						content += '<div class="image-text">'
								+ '<div class="image">' + '<a href="post.jsp?id='+result[i].postId+'" ><img src='+result[i].postUrlImg 
								+ ' alt="imageCar"></a>' 
								+ '</div>'
								+ '<div class="text">'
								+ '<a href="post.jsp?id='+result[i].postId+'">'
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
								+'<a href="post.jsp?id='+result[i].postId+'">'
								+'<%=resourceBundle.getString("xemthem")%>'+'</a>'
								+'</div>';
								;
					}		
						$("#addservice").append(content);
					});
				}
			</script>
			
			<!--test-->
			
		</div>
		<div class="clear"></div>
		
		
		
	</div>
	<!-- Footer -->
	<jsp:include page="jsp/footer.jsp"></jsp:include>

</body>
</html>