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
		<div class ="title-page">Dự toán chi phí mua xe</div>
		<div class="main-block">
			<br>
			<p>Quý khách tham khảo ước tính một số chi phí phải trả (Chưa bao gồm giảm trừ Khuyến Mại) khi mua và đăng ký xe.
			   Các chi phí khác có thể phát sinh (và không bắt buộc) trong quá trình đăng ký xe.</p><br>
			<div class="block-title">
				<div class="title-left">Chọn dòng xe</div>
				<div class="title-right"><span id="price">0</span></div>
			</div>
			<br>
			<div id="list-car">
			</div>	<br>	
			<div class="list-car"></div>
			<div class="title-left">Nơi đăng ký</div><br>
			<div id="list-city"></div>
			<br><br>
			<div class="title-left">Phí bắt buộc</div><br>
			<div style="display:flex;justify-content: space-between;width:100%">
			  	<div>Phí trước bạn</div>
			  	<div><span id = "feeTax">0</span></div>
			 </div> 
			  <br>
			  <div style="display:flex;justify-content: space-between;width:100%">
			  	<div>Phí đăng kiểm</div>
			  	<div><span id = "feeRegistration">0</span></div>
			 </div> 
			  <br>
			  <div style="display:flex;justify-content: space-between;width:100%">
			  	<div>Phí đường bộ</div>
			  	<div><span id = "feeRoadFee">0</span></div>
			 </div> 
			  <br>
			  <div style="display:flex;justify-content: space-between;width:100%">
			  	<div>Phí bảo hiểm dân sự</div>
			  	<div><span id = "feeInsurrance">0</span></div>
			 </div> 
			  <br>
			  <div style="display:flex;justify-content: space-between;width:100%">
			  	<div>Phí biển số</div>
			  	<div><span id = "feeLicensePlate">0</span></div>
			 </div> 
			  <br>	
			<div class="title-left">Phí tự nguyện (BH vật chất)</div><br>
			<p>Phí bảo hiểm vật chất quý khách có thể tự lựa chọn công ty bảo hiểm hoặc liên hệ tư vấn Hotline:  0343542277</p><br>
			 <div class="block-title">
				<div class="title-left">Tổng cộng (Phí)</div>
				<div class="title-right"><span id = "totalFee">0</span></div>
			</div>
			<br>
			 <div class="block-title">
				<div class="title-left">Tổng giá xe + (Phí)</div>
				<div class="title-right"><span id = "total">0</span></div>
			</div>
			<br>
		</div>
		<br>
		<quote><span style="color:red">Ghi chú</span>: Mức biểu phí trên đây là tạm tính (Chưa bao gồm Khuyến Mại), không phải báo giá chính thức và có thể thay đổi do sự thay đổi của thuế, CÔNG TY TNHH và các bên liên quan giảm trừ khi khuyến mại. Để có thông tin và bảng tính chi phí chính xác, xin vui lòng liên hệ trực tiếp để được tư vấn chi tiết.</quote>
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
	        t.done(function (result) {
	            var content = '<div>'+
					'<select class="custom-select" id="selectCar" onchange="selectCar()">'+
				'<option value="0" onchange="selectCar()">[-- Chọn dòng xe --]</option>> ';
	            for(var i=0;i<result.length;i++){
	            	var value =result[i].carPrice;
	            	content+='<option value="'+value+'">'+result[i].carName+'</option>';
	            }
	            content+='</select>'+'</div>'
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
	        t.done(function (result) {
	            var content = '<div>'+
				'<select class="custom-select" id="selectCity" onchange="selectCity()">'+
				'<option value="0"> [-- Chọn nơi đăng kí --]</option>';
	            for(var i=0;i<result.length;i++){
	            	var tax = result[i].tax;
	            	var registration = result[i].registration;
	            	var roadFee = result[i].roadFee;
	            	var insurrance = result[i].insurrance;
	            	var licensePlate=result[i].licensePlate;
	            	var fee = [tax,registration,roadFee,insurrance,licensePlate];
	            	content+='<option value="'+fee+'">'+result[i].cityName+'</option>';
	            }
	            content+='</select>'+'</div>'
				$("#list-city").append(content);
	            
			});
	    }
	    
	    function selectCar(){
	    	var price = document.getElementById("selectCar").value;
	    	document.getElementById("price").innerHTML = (price*1.0).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    }
	    
	    function selectCity(){
	    	var fee = document.getElementById("selectCity").value;
	    	var fee=fee.split(",");
	    	console.log(fee);
	    	var price = document.getElementById("selectCar").value;
	    	document.getElementById("feeTax").innerHTML = (fee[0]*price).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    	document.getElementById("feeRegistration").innerHTML = (fee[1]*1.0).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    	document.getElementById("feeRoadFee").innerHTML = (fee[2]*1.0).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    	document.getElementById("feeInsurrance").innerHTML = (fee[3]*1.0).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    	document.getElementById("feeLicensePlate").innerHTML = (fee[4]*1.0).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    	document.getElementById("totalFee").innerHTML = (fee[0]*price+fee[1]*1.0+fee[2]*1.0+fee[3]*1.0+fee[4]*1.0).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    	document.getElementById("total").innerHTML = (fee[0]*price+fee[1]*1.0+fee[2]*1.0+fee[3]*1+fee[4]*1.0+price*1.0).toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
	    }
	</script>
</body>

</html>
