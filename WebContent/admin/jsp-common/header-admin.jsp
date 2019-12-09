<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="header">

        <div>
            <a href="index.html" style='font-size:18px'>Admin Carsale</a>&nbsp
            <i class='fas fa-car' style='font-size:30px;color:red'></i>
        </div>
        <div class=" dropdownadmin">
            <!-- /.dropdown -->
            <div id="usernameAdmin"></div>
            <div class="dropdownnew">
                <div class="row-new">
                    <div class="columnnew">
                        <a href="user-detail.jsp"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </div>
                    <div class="columnnew">
                        <a href="user-update.jsp"><i class="fa fa-gear fa-fw"></i>Update Profile</a>
                    </div>
                    <div class="columnnew">
                        <a href="change-pass.jsp"><i class="fa fa-gear fa-fw"></i> Change Password</a>
                    </div>
                    <div class="columnnew">
                        <a href="logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar">
        <a href="index.jsp"><i class='fas fa-home' style='font-size:20px;color:red'>&nbsp</i>Trang chủ</a>
        <div class="dropdown">
            <a href="contact.html"><i class="fa fa-bar-chart" style="font-size:20px;color:red">&nbsp</i>Sản phẩm</a>
        </div>
        <div class="dropdown">
            <a href="new-index.jsp"><i class="fa fa-bar-chart" style="font-size:20px;color:red">&nbsp</i>Tin tức</a>
        </div>
        <div class="dropdown">
            <a href="contact.html"><i class='far fa-edit' style='font-size:20px;color:red'>&nbsp</i>Dịch vụ</a>
        </div>
        <a href="contact.html"><i class='fas fa-phone' style='font-size:20px;color:red'>&nbsp</i>Liên hệ</a>
    </div>
    <script>
        getUser();

        function getUser() {
            var t = $.ajax({
                url: "http://localhost:8080/CarSale/admin/user-detail",
                type: "GET",
                dataType: "json",
                contentType: "application/json; charset=utf-8"
            });
            t.done(function(result) {
                var usernameAdmin = result.userName;
                var content = '<button class="dropbtn" >' + usernameAdmin +
                    ' <i class="fa fa-user fa-fw"></i>' +
                    ' <i class="fa fa-caret-down"></i>' +
                    ' </button>';
                $("#usernameAdmin").append(content);
            });
        }
    </script>