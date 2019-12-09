<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Car-sale</title>
        <link rel="stylesheet" href="css/abc.css" type="text/css" />
        <link href="css/styles.css" rel="stylesheet" type="text/css" />
        <link href="css/style_AM.css" rel="stylesheet" type="text/css" />
        <link href="css/content.css" rel="stylesheet" type="text/css" />
        <link href="./dist/css/sb-admin-2.css" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            input[type=text],
            select {
                width: 50%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            
            .formgr {
                width: 50%;
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
                        <p><br></p>
                        <h1 class="page-header" style="padding-right:600px">Service Edit</h1>
                        <p><br></p>
                    </div>
                    <div class="col-lg-7" style="padding-bottom:120px">
                        <form action="" method="POST">
                            <div class="form-group">
                                <label>Title</label><br>
                                <input type=text class="form-control" name="txtName" placeholder="Please Enter Title" />
                            </div>
                            <div class="form-group">
                                <label>Images</label>&nbsp;
                                <input type="file" name="fImages">
                            </div>
                            <br>
                            <div class="formgr">
                                <label>Service Description</label>
                                <textarea type=text class="form-control" rows="3" placeholder="Please Enter Description"></textarea>
                            </div>
                            <br>
                            <button type="submit" class="btn btn-default">Change</button> &nbsp;
                            <button type="reset" class="btn btn-default">Reset</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <jsp:include page="../jsp/footer.jsp"></jsp:include>
    </body>

    </html>