<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Car-sale</title>
        <link rel="stylesheet" href="css/abc.css" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
        <link rel="stylesheet" href="./css/design_fromAD.css" type="text/css">
        <link href="css/style_AM.css" rel="stylesheet" type="text/css" />
        <link href="css/content.css" rel="stylesheet" type="text/css" />
        <link href="./dist/css/sb-admin-2.css" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
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
            <a href="#"><i class="fa fa-bar-chart" style="font-size:20px;color:red">&nbsp</i>Car</a>
        </div>
        <div class="dropdown">
            <a href="new-list.jsp"><i class="fa fa-newspaper-o" style="font-size:20px;color:red">&nbsp</i>Tin tức</a>
        </div>
        <div class="dropdown">
            <a href="#"><i class="fa fa-codepen" style="font-size:20px;color:red">&nbsp</i>Dịch vụ</a>
        </div>
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