<?php
   include ('xulydangki.php');
   include ('connect.php');
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="lib/bootstrap-3.3.7/dist/css/bootstrap.min.css">
    <script src="lib/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/styledangky.css" type="text/css">
    <script src="lib/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>

    <style>


    </style>

</head>
<body>
    <!-- header -->
    <?php
         include ('header.php');

    ?>

    <div class="container">
        <div class="row">

            <div class="col-md-6 col-md-kc">
                <div class="col-kc">
                        <div class="form-dk">
                                <form method="POST" action="dangkitaikhoan.php">
                                <?php
include ('errors.php');
?>
                                  
                                    <h4 class="title"><b>ĐĂNG KÝ BẰNG EMAIL</b></h4>
                                        <div class="form-group">
                                            <label>Email <small class="red">*</small></label> 
                                            <input type="text" class="form-control" name="email" value="<?php echo $username;?>">
                                        </div>

                                        <div class="form-group">
                                        <label >Mật khẩu <small class="red">*</small> </label>
                                            <input type="password" class="form-control" name="password" value="">    

                                        </div>

                                        <div class="form-group">
                                        <label >Phone<small class="red">*</small> </label>
                                            <input type="text" class="form-control" name="phone" value="<?php echo $phone;?>">    

                                        </div>

                                        <div class="form-group">
                                        <label >Giới tính:<small class="red">*</small> </label>
                                        &nbsp &nbsp &nbsp &nbsp &nbsp
                                            <input type="radio" name="sex" value="Nam" checked />Male &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                                         
                                            <input type="radio" name="sex" value="Nu" />Female
                                            <br /><br />  

                                        </div>
                                        <div class="form-group">
                                        <label >Địa chỉ<small class="red">*</small> </label>
                                            <input type="text" class="form-control" name="Address" value="<?php echo $diachi;?>">    

                                        </div>

                                        <div class="form-group text-center">
                                            <p class="help-block" style="font-size: 12px">Chọn đăng ký là bạn đã đồng ý với các <a href="/news/135157-dieu-kien-va-dieu-khoan.html">Điều khoản dịch vụ</a> của Mytour.vn</p>
                                            <button type="submit" sytle="width:80%" name="register" class="btn btn-info" >Đăng ký</button>
                                        </div>
                                </form>
                        </div>
                </div>

            </div>


            <div class="col-md-5 col-md-kc">
                <div class="col-kc">
                   <div class="box benefit">
                        <div class="form-dk">
                                <p class="special"><b>Lợi ích khi tạo tài khoản</b></p>
                                <p><i class="fa fa-check-circle green-dark-1"></i>Đặt phòng với giá giảm đến 40%.</p>
                                <p><i class="fa fa-check-circle green-dark-1"></i>Tích lũy điểm thưởng Vpoint với mỗi đơn phòng.</p>
                                <p><i class="fa fa-check-circle green-dark-1"></i>Nhận ưu đãi đặc biệt chỉ dành cho thành viên.</p>
                            </div>
                </div>
                </div>
            </div>


        </div>



    </div>

    <!-- footer -->
    <?php
             include ('footer.php');

        ?>



</body>

</html>