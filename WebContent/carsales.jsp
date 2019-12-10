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
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Car-sale</title>
	<link rel="stylesheet" href="./css/slider.css">
	<!--link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'-->
	<link
	href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap"
	rel="stylesheet">
	<script src="https://kit.fontawesome.com/33edc35265.js"></script>
</head>

<body>
	<%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
	<!-- Header -->
	<jsp:include page="jsp/header.jsp"></jsp:include>
	<!--Content-->
	<div class="calsale">
		<div class="carsales-1">
			<h1 style="color: aliceblue">TÍNH MUA XE TRẢ GÓP</h1>
			<p style="color: aliceblue">Mời Anh / Chị chọn các mẫu xe Toyota
				cần quan tâm và số tiền vay (Chưa bao gồm giảm trừ Khuyến Mại) bên
				dưới</p>
		</div>
		<div class="calsales-2">
			<form action="/carsales.jsp">
				<select id="country" name="country" onchange="itemSelected()">
					<option value="0" >Chọn xe bạn muốn mua</option>
				</select>&nbsp; <input type="text" id="vnd" placeholder="giá bán" disabled>
				<input type="number" id="tienvay" min="1" max="1000000000" placeholder="Nhập số tiền vay (vnd)" onchange="calcu()">&nbsp;
				<input type="number" id="tienvaypt" min="1.00" max="100.00" step="0.01" placeholder="Nhập số tiền vay tính theo (%)" disabled>
				<input type="number" id="laixuatvay" min="1" max="100" placeholder="Nhập lãi xuất vay (%/thang)">&nbsp;
				<input type="number" id="thoihanvay" min="1" max="10" placeholder="Nhập thời hạn vay (tháng)">
			</form>
			
		</div>
			
		<br>
		<div class="thanhtoan">
			<input id="sub" type="submit" value="Submit" onclick="saveSubmit()"> <input id="res" type="reset" value="Clear" onclick="resetInfo()">
		</div>
		<div style="margin: 0 10% 0 10%">
            <table class="responstable">
                <thead>
                    <tr>
                        <th>
                            <h1>TÊN XE</h1>
                        </th>
                        <th>
                             <h1>GIÁ(vnd)</h1>
                        </th>
                        <th>
                             <h1>SỐ TIỀN VAY(vnd)</h1>
                        </th>
                        <th>
                             <h1>LÃI SUẤT(%/tháng)</h1>
                        </th>
                        <th>
                             <h1>THỜI HẠN(tháng)</h1>
                        </th>
                    </tr>
                </thead>
                <tbody id="formSale">
                </tbody>
            </table>
        </div>
	</div>
	<div style="margin: 0 10% 0 10%">
            <table class="responstable">
                <thead>
                    <tr>
                        <th>
                            <h1>THÁNG</h1>
                        </th>
                        <th>
                             <h1>TIỀN GỐC(vnd)</h1>
                        </th>
                        <th>
                             <h1>TIỀN LÃI(vnd)</h1>
                        </th>
                        <th>
                             <h1>GỐC + LÃI(vnd)</h1>
                        </th>
                        <th>
                             <h1>DƯ NỢ(vnd)</h1>
                        </th>
                    </tr>
                </thead>
                <tbody id="tabletwo">
                </tbody>
            </table>
        </div>
	<!-- Footer -->
	<jsp:include page="jsp/footer.jsp"></jsp:include>
	<!-- test -->
			<script type="text/javascript">
			test();

	        function test() {
	            var f = $.ajax({
	                url: "http://localhost:8080/CarSale/api/list-price",
	                type: "GET",
	                dataType: "json",
	                contentType: "application/json; charset=utf-8"
	            });
	            f.done(function (result) {
	                console.log(result);
	                var items='';
	                for(let i=0;i<result.length;i++){
	                	items+= '<option value="'+result[i].carName+'" >'+result[i].carName+'</option>' ;
	                }
	                console.log(items);
	                $("#country").append(items);
	            });
	        }  
	        
	        
	        function itemSelected(){
	        	var selected_index = document.getElementById('country').selectedIndex;
	        	var t = $.ajax({
	                url: "http://localhost:8080/CarSale/api/car-detail?id="+selected_index,
	                type: "GET",
	                dataType: "json",
	                contentType: "application/json; charset=utf-8"
	            });
	        	t.done(function (info) {
	                console.log(info);  
					if(selected_index>0){
						document.getElementById('vnd').value=info.carPrice;
					}else{
						document.getElementById('vnd').value='giá bán';
					}
	            });
	        }
	        
	        function calcu(){
	        	var loan=document.getElementById('tienvay').value;
	        	console.log(loan);
	        	var price=document.getElementById('vnd').value;
	        	console.log(price);
	        	var div=(loan/price)*100;
	        	document.getElementById('tienvaypt').value=div.toFixed(2);
	        }
	        function resetInfo(){
	        	 location.reload();
	        }
	        function saveSubmit(){
	        	var carname=document.getElementById('country').value;
	        	var price=document.getElementById('vnd').value;
	        	var loan=document.getElementById('tienvay').value;
	        	var rate=document.getElementById('laixuatvay').value;
	        	var dur=document.getElementById('thoihanvay').value;
	        	var cashpermonth=loan/dur;
	        	console.log(cashpermonth);
	        	var inform='<tr>' +
                '<td>' + carname + '</td>' +
                '<td>' + price.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })+ '</td>' +
                '<td>' + loan.toLocaleString('it-IT', { style: 'currency', currency: 'VND' }) + '</td>' +
                '<td>' + rate +'</td>'+
                '<td>' + dur +'</td>'+
                '</tr>';  
                var table='';
                var total=Number(loan);
                
                for(let i=0;i<dur;i++){
                	var month=i+1;
                	var inpermonth=(price*rate*0.01)-(cashpermonth*i*rate*0.01);
                	var sum=cashpermonth+(price*rate*0.01)-(cashpermonth*i*rate*0.01);
                	total+=inpermonth;
                	var remain=price-cashpermonth*i;
                	table+='<tr>'+
                	'<td>'+month+'</td>'+
                    '<td>'+cashpermonth.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })+'</td>'+
                    '<td>'+inpermonth.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })+'</td>'+
                    '<td>'+sum.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })+'</td>'+
                    '<td>'+remain.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })+'</td>'+
                    '</tr>';
                }
                
               table+='<tr>'+
           	'<td colspan="2">TỔNG GỐC:'+loan.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })+'</td>'+
            '<td colspan="3">TỔNG GỐC+LÃI:'+total.toLocaleString('it-IT', { style: 'currency', currency: 'VND' })+'</td>'+
            '</tr>';
                console.log(table);
                $("#formSale").append(inform);
                $("#tabletwo").append(table);
//                 '<h1>TỔNG GỐC:'+loan+'    TỔNG GỐC+LÃI:'+total+'</h1>'
	        }
			</script>
							
			<!-- test -->	
</body>

</html>