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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Car-sale</title>
    <link href="https://fonts.googleapis.com/css?family=Be+Vietnam&display=swap" rel="stylesheet">
</head>

<body>
    <%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
    <!-- Header -->
    <jsp:include page="jsp/header.jsp"></jsp:include>
    <!-- Content -->
    <div>
        <div style="margin-top: 5%;">
            <h1>
                <%=resourceBundle.getString("banggiaxethang")%>
            </h1>
        </div>
        <div style="margin: 0 10% 0 10%">
            <table class="responstable">
                <thead>
                    <tr>
                        <th>
                            <%=resourceBundle.getString("tensanpham")%>
                        </th>
                        <th>
                            <%=resourceBundle.getString("mieutangan")%>
                        </th>
                        <th>
                            <%=resourceBundle.getString("giaxe")%>
                        </th>
                        <th>
                            <%=resourceBundle.getString("contact")%>
                        </th>
                    </tr>
                </thead>
                <tbody id="listCar">
                </tbody>
            </table>
        </div>
    </div>
    <!-- Footer -->
    <jsp:include page="jsp/footer.jsp"></jsp:include>
    <script type="text/javascript">
        test();

        function test() {
            var t = $.ajax({
                url: "http://localhost:8080/CarSale/api/list-price",
                type: "GET",
                dataType: "json",
                contentType: "application/json; charset=utf-8"
            });
            t.done(function (result) {
                // console.log(result);
                let car = result.filter(result => {
                    return result.carCategory;
                });
                var suv = demo(result);
                console.log("List:", car);
                $("#listCar").append(suv);
            });
        }

        function demo(array) {
            var content = '';
            for (let i = 0; i < 8; i++) {
                content += '<tr>' +
                    '<td>' + array[i].carName + '</td>' +
                    '<td>' + array[i].carDes + '</td>' +
                    '<td>' + (array[i].carPrice).toLocaleString('it-IT', { style: 'currency', currency: 'VND' }) + '</td>' +
                    '<td>' +
                    '<button class="button-contact1">' +
                    '<img src="./icon/wallet_16px.png" />' +
                    '<p>' + '<%=resourceBundle.getString("tinhmuatragop")%>' + '</p>' +
                    '</button>' +
                    '<button class="button-contact2">' +
                    '<img src="./icon/calculator_16px.png" />' +
                    '<p>' + '<%=resourceBundle.getString("dutoanchiphi")%>' + '</p>' +
                    '</button>' +
                    '</td>' +
                    '</tr>';
            }
            return content;
        }
    </script>
</body>

</html>