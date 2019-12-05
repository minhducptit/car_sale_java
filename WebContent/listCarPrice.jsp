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
            <script src="https://kit.fontawesome.com/33edc35265.js"></script>
        </head>

        <body>
            <%
		ResourceBundle resourceBundle = ResourceBundle.getBundle("carsale.common.Content", request.getLocale());
	%>
                <div class="header">
                    <div class="header-left">
                        <img src="./icon/gmail_header48px.png" /> <span style="color: aliceblue;"><%=resourceBundle.getString("email")%></span> &nbsp; <img src="./icon/phone_52px.png" /> <span style="color: aliceblue;"><%=resourceBundle.getString("phone")%></span>
                    </div>
                    <div class=" header-right ">
                        <a class="active" href="listCarPrice.jsp">
                            <%=resourceBundle.getString("banggiaxe")%>
                        </a>
                        <a href="carsales">
                            <%=resourceBundle.getString("muaxetragop")%>
                        </a>
                        <a href="#about ">
                            <%=resourceBundle.getString("thuvien")%>
                        </a>
                    </div>
                </div>
                <div class="navbar">
                    <a href="index.jsp">
                        <%=resourceBundle.getString("home")%>
                    </a>
                    <a href="new.jsp">
                        <%=resourceBundle.getString("tintuc")%>
                    </a>
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
                                        <a href="suv.jsp">VIOS</a>
                                    </h3>
                                    <a href="#">Vios 1.5E (MT)</a> <a href="#">Vios G(CVT)</a> <a href="#">Vios 1.5E (CVT)</a>
                                </div>
                                <div class="column">
                                    <h3>
                                        <a href="suv.jsp">
                                            <%=resourceBundle.getString("xebantai")%>
                                        </a>
                                    </h3>
                                    <a href="#">Hilux 2.4G 4x4MT</a> <a href="#">Hilux 2.4E 4×2 AT</a>
                                    <a href="#">Hilux 2.8G 4×4 AT</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="listCarPrice.jsp">
                        <%=resourceBundle.getString("banggiaxe")%>
                    </a>
                    <a href="service.jsp">
                        <%=resourceBundle.getString("dichvu")%>
                    </a>
                    <a href="contact.jsp">
                        <%=resourceBundle.getString("contact")%>
                    </a>
                </div>
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
                <footer>
                    <div class="footer-top">
                        <div class="footer-grid left-grid">
                            <h3>
                                <%=resourceBundle.getString("xemnhieunhat")%>
                            </h3>
                            <ul>
                                <li><a href="#">SUV</a></li>
                                <li><a href="#">SEDAN</a></li>
                                <li>
                                    <a href="#">
                                        <%=resourceBundle.getString("xebantai")%>
                                    </a>
                                </li>
                                <li><a href="#">VIOS</a></li>
                            </ul>
                        </div>
                        <div class="footer-grid center-grid">
                            <h3>
                                <%=resourceBundle.getString("aboutus")%>
                            </h3>
                            <div class="f_menu">
                                <ul>
                                    <li>
                                        <%=resourceBundle.getString("diachi")%>: Học viện công Nghệ Bưu chính viễn thông</li>
                                    <li>Hotline: 0973.631.248</li>
                                    <li><i><%=resourceBundle.getString("loinhankhachhang")%></i></li>
                                </ul>
                            </div>
                        </div>
                        <div class="footer-grid right-grid">
                            <h3>
                                <%=resourceBundle.getString("contactinfo")%>
                            </h3>
                            <ul class="follow_icon">
                                <li>
                                    <a href="#" style="opacity: 1;"> <img src="images/follow_icon.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" style="opacity: 1;"> <img src="img/follow_icon1.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" style="opacity: 1;"> <img src="img/follow_icon2.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" style="opacity: 1;"> <img src="img/follow_icon3.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" style="opacity: 1;"> <img src="img/follow_icon4.png" alt="">
                                    </a>
                                </li>
                                <li>
                                    <a href="#" style="opacity: 1;"> <img src="img/follow_icon5.png" alt="">
                                    </a>
                                </li>
                            </ul>
                            <p>
                                <%=resourceBundle.getString("gopyxingoi")%>: 03456789
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
                <script type="text/javascript">
                    test();

                    function test() {
                        var t = $.ajax({
                            url: "http://localhost:8080/CarSale/api/list-price",
                            type: "GET",
                            dataType: "json",
                            contentType: "application/json; charset=utf-8"
                        });
                        t.done(function(result) {
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
                                '<td>' + array[i].carPrice + '</td>' +
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
