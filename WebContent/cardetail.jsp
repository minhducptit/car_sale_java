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
<link href="css/detail.css" rel="stylesheet" type="text/css" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SUV</title>
<link rel="stylesheet" href="./css/slider.css">
<link
	href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap"
	rel="stylesheet">
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
	<div class="container-news">
		<div class="container-top">
			<ul>
				<li><a href="index.jsp"> <span>home</span>
				</a> <span>|</span></li>
				<li><a href="new.jsp">Tin tức</a></li>
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
						<li><a href="new.jsp">Tin tức</a></li>
					</ul>
				</div>
			</div>
			<div class="block block-news-event">
				<div class="blankbox"></div>
			</div>
			<div class="block block-news-event">
				<div div class="block-title">
					<h3>
						<b>Dòng xe</b>
					</h3>
				</div>
				<div class="block-content content-news-event">
					<ul>
						<li><label class="checkbox-container">Fortuner <input
								type="checkbox" checked="checked"> <span
								class="checkmark"></span>
						</label></li>
						<li><label class="checkbox-container">Rush <input
								type="checkbox" checked="checked"> <span
								class="checkmark"></span>
						</label></li>
						<li><label class="checkbox-container">Land Cruiser <input
								type="checkbox" checked="checked"> <span
								class="checkmark"></span>
						</label></li>
						<li><label class="checkbox-container">Prado <input
								type="checkbox" checked="checked"> <span
								class="checkmark"></span>
						</label></li>
						<li><label class="checkbox-container">Highlander <input
								type="checkbox" checked="checked"> <span
								class="checkmark"></span>
						</label></li>
					</ul>
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
		<div class="main-content">
			<div class="wrap">
				<div class="main-box">
					<div class="box_wrapper">
						<h1 id="suv" style="color: white;">Fortuner 2.4G 4×2 AT</h1>
					</div>
					<div class="section group">
						<div class="avacar-detail">
							<img class="img-detail" src="./img/car1.jpg" alt="" />
						</div>
						<div class="description">
							<div class="para-detail">

								<p>SUV là viết tắt của Sport Utility Vehicle là một chiếc xe
									lớn, cao,chế tạo trên khung gầm chắc chắn, gồ ghề và sở hữu hệ
									dẫn động bốn bánh giúp bạn có thể đi bất cứ đâu.</p>
								<p>Shop chúng tôi tự hào đem đến cho khách hàng thông tin và
									các dịch vụ hỗ trợ đầy đủ nhất cho dòng xe SUV của Toyota.</p>

							</div>
							<div class="price-display" style="height: 19px;">
								<span class="actual-detail">$12.00</span> <span
									class="reducedfrom-detail">$66.00</span>
							</div>
							<div style="padding-top: 100px; padding-left: 50px;">
								<button class="button-detail">Đăng ký mua trả góp</button>
								<button class="button-detail">Ước lượng chi phí</button>
							</div>
						</div>
					</div>
				</div>
				<div class="main-detail">
					<h2 class="review-title">Đánh giá nhanh:</h2>
					<p>Có thể thấy rằng những phiên bản trước của Toyota Fortuner
						như Fortuner 2016 trước đây chưa tạo được nhiều ấn tượng đối với
						người dùng do thiết kế trung tính, chưa bắt mắt.</p>
					<div class="review-image-container">
						<img class="review-image"
							src="img\detail\dau-xe-fortuner-24g-mt-may-dau-so-san-muaxegiatot-vn-2.jpg">
					</div>
					<p>Nhưng từ Fortuner 2017, Toyota đã mang đến cho khách hàng
						một Fortuner với một diện mạo mới hoàn toàn khác biệt. Fortuner
						lần trở lại này có thiết kế ngoại thất như phiên bản Fortuner 2017
						ra mắt trước đó.</p>
					<div class="review-image-container">
						<img class="review-image"
							src="img\detail\gioi-thieu-fortuner-24g-mt-may-dau-so-san-muaxegiatot-vn-10.jpg">
					</div>
					<p>Phiên bản mới toát lên vẻ hầm hố bởi thân hình to lớn với
						kích thước tổng thể 4795 x 1855 x 1835 mm, gây ấn tượng với những
						đường bo tròn uyển chuyển, mềm mại rất đẹp mắt.</p>
					<div class="review-image-container">
						<img class="review-image"
							src="img\detail\den-xe-fortuner-24g-mt-may-dau-so-san-muaxegiatot-vn-9.jpg">
					</div>
					<div class="stat-section">
						<h2 class="review-title">Thông số:</h2>
						<ul class="stat">
							<li>
								<p>Kích thước tổng thể (DxRxC): 4795 x 1855 x 1835 mm</p>
							</li>
							<li>
								<p>Khoảng sáng gầm xe: 219 mm</p>
							</li>
							<li>
								<p>Loại động cơ: Diesel 2GD-FTV 2.4L</p>
							</li>
							<li>
								<p>Công suất: 148 mã lực.</p>
							</li>
							<li>
								<p>Mô men xoắn cực đại: 400 Nm.</p>
							</li>
							<li>
								<p>Hộp số: sàn 6 cấp</p>
							</li>
							<li>
								<p>Trợ lực lái: thủy điện</p>
							</li>
							<li>
								<p>Kích thước lốp: 265/65R17</p>
							</li>
							<li>
								<p>Hệ thống phanh (Trước/ sau): đĩa tản nhiệt/ đĩa</p>
							</li>
							<li>
								<p>Hệ thống thông tin giải trí: CD, kết nối AUX, USB,
									Bluetooth, dàn âm thanh 6 loa</p>
							</li>
							<li>
								<p>Hệ thống điều hoà: chỉnh tay 2 dàn lạnh và cửa gió phía
									sau</p>
							</li>
							<li>
								<p>An ninh: hệ thống báo động và mã hóa khóa động cơ</p>
							</li>
						</ul>
					</div>

				</div>
				<div class="clear"></div>
			</div>
			<div class="wrap">
				<div class="main-box">
					<div class="box_wrapper">
						<h1 id="suv" style="color: white;">CÁC SẢN PHẨM TƯƠNG TỰ</h1>
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
								<a href="cardetail.jsp"
									title="Lorem ipsum dolor sit amet, consect etuer"
									class="button">Chi tiết <span></span>
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
								<a href="single.jsp"
									title="Lorem ipsum dolor sit amet, consect etuer"
									class="button">Chi tiết <span></span>
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
								<a href="single.jsp"
									title="Lorem ipsum dolor sit amet, consect etuer"
									class="button">Chi tiết <span></span>
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
								<a href="single.jsp"
									title="Lorem ipsum dolor sit amet, consect etuer"
									class="button">Chi tiết <span></span>
								</a>
							</div>

						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
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