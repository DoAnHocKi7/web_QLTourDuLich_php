<style>
    .val_error {
        color: #FF1F1F;

    }
</style>

<div class="navbar">
    <div class="container">
        <div class="row">
            <div class="navbar-header ">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" id="mytour" href="#">
                    <img src="images/mytour.png">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav mr-auto">
                    <li class="active">
                        <a href="#">KHÁCH SẠN</a>
                    </li>
                    <li>
                        <a href="#">TOUR</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
                            THÔNG TIN
                            <span class="caret"></span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" id="dropdown-tt">
                            <a class="dropdown-item" href="#">Cẩm nang du lịch</a>
                            <hr>
                            <a class="dropdown-item" href="#">Khách sạn tốt nhất</a>
                            <hr>
                            <a class="dropdown-item" href="#">Ưu đãi</a>
                            <hr>
                            <a class="dropdown-item" href="#">Tuyển dụng</a>
                        </div>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="phone-call">
                        <p>Hà Nội:
                            <strong>024 7109 9999</strong>
                        </p>
                        <p>HCM:
                            <strong>028 7109 9998</strong>
                        </p>
                    </li>
                    <li class="line">
                        <a href="#">
                            <span class="glyphicon glyphicon-earphone"></span>24/7</a>
                    </li>
                    <li class="phanhoi">
                        <a href="#">
                            <img src="images/phanhoi.png" width="40px" height="35px" alt="Phản hồi cá nhân">
                        </a>
                    </li>
                    <li class="line">
                        <a href="#">
                            <img src="images/thongbao.png" width="20px" height="20px" alt="Phản hồi cá nhân">
                        </a>
                    </li>
                    <li>
                        <div class="dropdown">
                            <a href="#" class="dropdown-toggle" id="DKTK" role="button" data-toggle="dropdown" aria-expanded="false">
                                TÀI KHOẢN<span class="caret"> </span>
                            </a>

                            <div class="dropdown-menu" aria-labelledby="DKTK" id="dropdown-tk">
                                <?php
                                    if(!isset($_SESSION["username"])){
                                        echo "<a href='dangkitaikhoan.php' class='dropdown-item'>Đăng ký</a>";
                                        echo "<br/>";
                                        echo "<a class='dropdown-item' href='#' data-toggle='modal' data-target='#myModal'>Đăng nhập</a>"; 
                                    }
                                ?>
                                <hr>
                                <hr>
                                <a class="dropdown-item" href="#">Khách sạn yêu thích</a>
                                <?php
                                    if(isset($_SESSION['username'])){
                                        echo "<a class='dropdown-item' href='xulydangki.php?logout=true'>Đăng xuất</a>";
                                    }
                                ?>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">ĐĂNG NHẬP</h4>
            </div>
            <div class="modal-body">
                <h4 class="title"><b>ĐĂNG NHẬP BẰNG EMAIL</b>

                </h4>
                <!-- thay đổi chỗ này -->
                <form method="POST" action="xulylogin.php" onsubmit="return Validate()" name="vform">
                    <div class="form-group">
                        <label>Email <small class="red">*</small></label>
                        <input type="text" class="form-control" name="email_dn" value="">
                        <div id="email_error" class="val_error"></div>
                    </div>

                    <div class="form-group">
                        <label>Mật khẩu <small class="red">*</small> </label>
                        <input type="password" class="form-control" name="password_dn" value="">
                        <div id="pass_error" class="val_error"></div>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" name="register" class="btn btn-info btn-dn">Đăng Nhập</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<script>
    var username = document.forms["vform"]["email_dn"];
    var password = document.forms["vform"]["password_dn"];
    var name_error = document.getElementById("email_error");
    var pass_error = document.getElementById("pass_error");

    username.addEventListener("blur", nameVerify, true);

    password.addEventListener("blur", passwordVerify, true);

    function Validate() {
        if (username.value == "") {
            username.style.border = "1px solid red";
            name_error.textContent = "Username is required";
            username.focus();
            return false;

        }
        if (password.value == "") {
            password.style.border = "1px solid red";
            pass_error.textContent = "Password is required";
            password.focus();
            return false;

        }
    }
    function nameVerify() {
        if (username.value != "") {
            username.style.border = "1px solid #5E6E66";
            name_error.innerHTML = "";
            return true;
        }
    }
    function passwordVerify() {
        if (password.value != "") {
            password.style.border = "1px solid #5E6E66";
            pass_error.innerHTML = "";
            return true;
        }
    }

</script>