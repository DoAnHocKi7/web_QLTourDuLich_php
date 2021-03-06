<?php
    session_start();
   include ('connect.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="lib/bootstrap-3.3.7/dist/css/bootstrap.min.css">
    <script src="lib/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="lib/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/tab_control.css">
</head>

<body>
    <!--Header -->

    <?php
        include ('header.php');
    ?>
    <!---Header--->
    <?php  if(isset($_SESSION["username"])): ?>
    <div class="dadangnhap">
        <p>Welcome<strong>
                <?php echo $_SESSION["username"]; ?></strong> </p>
    </div>

    <?php endif ?>

    <div class="container-fluid">

        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>

            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/animate.png" alt="Los Angeles">
                </div>

                <div class="item">
                    <img src="images/animate1.png" alt="Chicago">
                </div>


            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>


    <!-- nơi đi nơi đến -->
    <!-- <div class="left-content pull-left"> -->
    <div class="section-tab">
        <div class="nav-btn-tab">
            <button class="tablinks active" data-val="tab-A">Tour</button>
            <button class="tablinks" data-val="tab-C">Khách sạn</button>
        </div>
        <div id="tab-A" class="tabcontent" style="display: block;">
            <div class="radio">
                <div class="form-group">
                    <form action="" method="post">
                        <div class="place"><input type="text" name="" id="" placeholder="Nơi đi..."></div>
                        <div class="place"><input type="text" name="" id="" placeholder="Nơi đến..."></div>
                        <div style="overflow:  hidden;" class="date-time">
                            <div class="input-group" style="width: 100%;float: right;">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input class="form-control" id="date" name="date" placeholder="Ngày đi" type="text" style="float: right;width:100%;">
                            </div>
                        </div>
                        <div style="overflow:  hidden;" class="date-time">
                            <div class="input-group" style="width: 100%;float: right;">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input class="form-control" id="date" name="date" placeholder="Ngày đến" type="text" style="float: right;width:100%;">
                            </div>
                        </div>
                        <div class="quantity">
                            <div class="input-group plus-minus-input">
                                <div class="input-group-button">
                                    <button type="button" class="button hollow circle" data-quantity="minus" data-field="quantity">
                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <input class="input-group-field" type="number" name="quantity" value="0">
                                <div class="input-group-button">
                                    <button type="button" class="button hollow circle" data-quantity="plus" data-field="quantity">
                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="form-submit">
                            <button type="submit">
                                <span>Tìm kiếm</span>
                            </button>
                        </div>
                    </form>
                </div>


            </div>

        </div>

        <div id="tab-C" class="tabcontent last-content" style="display: none;">
            <div class="radio">
                <div class="form-group">
                    <form action="" method="post">
                        <div class="place"><input type="text" name="departure"  placeholder="Nơi đi..."></div>
                        <div class="place"><input type="text" name="destination"  placeholder="Nơi đến..."></div>
                        <div style="overflow:  hidden;" class="date-time">
                            <div class="input-group" style="width: 100%;float: right;">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input class="form-control" id="date1" name="date1" placeholder="Ngày đi" type="text" style="float: right;width:100%;">
                            </div>
                        </div>
                        <div style="overflow:  hidden;" class="date-time">
                            <div class="input-group" style="width: 100%;float: right;">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input class="form-control" id="date1" name="date1" placeholder="Ngày đến" type="text" style="float: right;width:100%;">
                            </div>
                        </div>
                        <div class="quantity">
                            <div class="input-group plus-minus-input">
                                <div class="input-group-button">
                                    <button type="button" class="button hollow circle" data-quantity="minus" data-field="quantity">
                                        <i class="fa fa-minus" aria-hidden="true"></i>
                                    </button>
                                </div>
                                <input class="input-group-field" type="number" name="quantity" value="0">
                                <div class="input-group-button">
                                    <button type="button" class="button hollow circle" data-quantity="plus" data-field="quantity">
                                        <i class="fa fa-plus" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="form-submit">
                            <button type="submit">
                                <span>Tìm kiếm</span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
        <!-- </div> -->
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 title-sm">
                <h4 class="text-uppercase">
                    Điểm phổ biến nhất việt nam
                </h4>
            </div>
        </div>
    </div>
    <div class='container internal-tour'>
        <div class='row'>
    <?php
        $sql="SELECT  gia,tentour,hinhanh,tendiadiem FROM tour t,hanh_trinh ht,diadiem d where loaitour=1 and t.ma_ht=ht.ma_ht and ht.noiden=d.MaDiaDiem
                group by tendiadiem  limit 8;";
        $tour_trongnuoc=mysqli_query($conn,$sql);
        if(mysqli_num_rows($tour_trongnuoc)>0){
            while ($tour=mysqli_fetch_assoc($tour_trongnuoc)){
               echo "
                   <a href='#'>
                       <div class='col-sm-4 col-md-3'>
                           <div class='panel panel-primary'>
                               <div class='panel-heading'>".$tour['tendiadiem']."</div>
                               <div class='panel-body'>
                                   <img src='".$tour['hinhanh']."' width='100%' height='20%'>
                               </div>
                               <div class='panel-footer'>".$tour['tentour']."</div>
                           </div>
                       </div>
                   </a>
                    ";
            }
        }
        else{
            echo "<h3 style='color: red'>Hiện tại chưa có tour trong nước</h3>";
        }
    ?>
        </div>
    </div>


    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 title-sm">
                <h4 class="text-uppercase">
                    Điểm phổ biến nhất nước ngoài
                </h4>
            </div>
        </div>
    </div>

    <div class="container external-tour">
        <div class="row">
        <?php
            $sql_ngoainuoc="SELECT  gia,tentour,hinhanh,tendiadiem FROM tour t,hanh_trinh ht,diadiem d where loaitour=2 and t.ma_ht=ht.ma_ht and ht.noiden=d.MaDiaDiem
                    group by tendiadiem  limit 8;";
            $tour_ngoainuoc=mysqli_query($conn,$sql_ngoainuoc);
            if(mysqli_num_rows($tour_ngoainuoc)>0){
                while ($tour=mysqli_fetch_assoc($tour_ngoainuoc)){
                    $x=1;
                echo "
                    <a href='#'>
                        <div class='col-sm-4 col-md-3'>
                            <div class='panel panel-primary'>
                                <div class='panel-heading'>".$tour['tendiadiem']."</div>
                                <div class='panel-body'>
                                    <img src='".$tour['hinhanh']."' width='100%' height='20%'>
                                </div>
                                <div class='panel-footer'>".$tour['tentour']."</div>
                            </div>
                        </div>
                    </a>
                        ";
                }
                // Free result set
                mysqli_free_result($tour_ngoainuoc);
            }
            else{
                echo "<h3 style='color: red'>Hiện tại chưa có tour nước ngoài</h3>";
            }
        ?>
        </div>
    </div>

    <!-- FOOTER -->
    <?php
        include ('footer.php');
    ?>
    <!-- KẾT THÚC FOOTER -->
    <script src="lib/tab_control.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap-datepicker3.css" />
    <script>
        $(document).ready(function () {
            var date_input = $('input[name="date"]'); //our date input has the name "date"
            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
            date_input.datepicker({
                format: 'dd/mm/yyyy',
                container: container,
                todayHighlight: true,
                autoclose: true,
            });
        });

        jQuery(document).ready(function () {
            // This button will increment the value
            $('[data-quantity="plus"]').click(function (e) {
                // Stop acting like a button
                e.preventDefault();
                // Get the field name
                fieldName = $(this).attr('data-field');
                // Get its current value
                var currentVal = parseInt($('input[name=' + fieldName + ']').val());
                // If is not undefined
                if (!isNaN(currentVal)) {
                    // Increment
                    $('input[name=' + fieldName + ']').val(currentVal + 1);
                } else {
                    // Otherwise put a 0 there
                    $('input[name=' + fieldName + ']').val(0);
                }
            });
            // This button will decrement the value till 0
            $('[data-quantity="minus"]').click(function (e) {
                // Stop acting like a button
                e.preventDefault();
                // Get the field name
                fieldName = $(this).attr('data-field');
                // Get its current value
                var currentVal = parseInt($('input[name=' + fieldName + ']').val());
                // If it isn't undefined or its greater than 0
                if (!isNaN(currentVal) && currentVal > 0) {
                    // Decrement one
                    $('input[name=' + fieldName + ']').val(currentVal - 1);
                } else {
                    // Otherwise put a 0 there
                    $('input[name=' + fieldName + ']').val(0);
                }
            });
        });

    </script>
    
</body>

</html>