<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Car-sale</title>
    <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="css/abc.css" type="text/css" />
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="./css/design_fromAD.css" type="text/css">
    <link href="css/style_AM.css" rel="stylesheet" type="text/css" />
    <link href="css/content.css" rel="stylesheet" type="text/css" />
    <link href="./dist/css/sb-admin-2.css" rel="stylesheet">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        table,
        th,
        td {
            border: 0.5px solid black;
        }
    </style>
</head>

<body>
    <!-- Hearder -->
    <jsp:include page="../admin/jsp-common/header-admin.jsp"></jsp:include>
    <!--CONTENT-->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <p>
                        <br>
                    </p>
                    <h1 class="page-header">Service List</h1>
                    <p>
                        <br>
                    </p>
                </div>
                <div id="prlist">
                    <h3> Add Service</h3>
                    <i class="fa fa-plus" aria-hidden="true"></i>&nbsp<a +
                        href="cardetail.jsp?id=' + array[i].carId + '" class="button">Add</a>
                </div>
                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                    <thead>
                        <tr align="center">
                            <th>ID</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Delete</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody id="listService"></tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <jsp:include page="../jsp/footer.jsp"></jsp:include>
</body>
<script>
    loadService();
    function loadService() {
        var t = $.ajax({
            url: "http://localhost:8080/CarSale/api/list-service",
            type: "GET",
            dataType: "json",
            contentType: "application/json; charset=utf-8"
        });
        t.done(function (result) {
            //Show list news
            var size = result.length;
            var content = '';
            for (var i = 0; i < result.length; i++) {
                content += '<tr class="odd gradeX" align="center">' +
                    '<td>' + result[i].postId + '</td>' +
                    '<td>' + result[i].postTitle + '</td>' +
                    '<td>' + result[i].postContent + '</td>' +
                    '<td>' + result[i].timeUpdate + '</td>' +
                    '<td>' + result[i].postType + '</td>' +
                    '<td class="center"><i class="fa fa-trash-o  fa-fw"></i><button onclick = "deleteNews( ' + result[i].postId + ' )"  id="delete"> Delete</button></td>' +
                    '<td class="center"><i class="fa fa-pencil fa-fw"></i> <a href="service-edit.jsp?id=' + result[i].postId + '">Edit</a></td>' +
                    ' </tr>';
            }
            $("#listService").append(content);
        });

    }
</script>

</html>