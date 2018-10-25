
<?php
    session_start();
   include ('connect.php');
    
   $username="";
   $password="";
   $phone="";
   $sex="";
   $diachi="";
   $errors=array();


   if(isset($_POST['register']))
   {
       $username=$_POST['email'];
       $password=$_POST['password'];
       $phone=$_POST['phone'];
       $sex=$_POST['sex'];
       $diachi=$_POST['Address'];

       function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
      }

       if(empty($username))
       {
           array_push($errors,"Bạn nhập thiếu gmail");
           
       }
       else
       {
            $email = test_input($_POST["email"]);
                
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                array_push($errors,"Email không hợp lệ");
            }

       }
     
       
       
       if(empty($password))
       {
           array_push($errors,"Bạn nhập thiếu password");
           
       }
       if(empty($phone))
       {
           array_push($errors,"Bạn nhập thiếu số phone");
           
       }
       else
       {
           if(strlen($phone)<10)
           {
            array_push($errors,"Số điện thoại phải 10 số trở lên");
           }
       }
       
       if(empty($diachi))
       {
           array_push($errors,"Bạn nhập thiếu địa chỉ");
           
       }

      
     
   
      



       $kiemtra_email="SELECT * FROM account WHERE Email='$username'";
       $result=mysqli_query($conn,$kiemtra_email);

       if(mysqli_num_rows($result)==1)
       {
            array_push($errors,"Email đã tồn tại");

       }
       if(count($errors)==0)
       {
           $password_dl=md5($password);
           $sql="INSERT INTO `ql_tourdulich`.`khach_hang` (`Ma_KH`, `TenKH`, `SexKH`, `Phone`, `Email`, `DiaChi`, `LoaiKH`, `MatKhau`) 
		   VALUES ('555555', 'qqq', '$sex', '$phone', '$username', '$diachi', '4', '$password');";
           mysqli_query($conn,$sql);

           $_SESSION['username']=$username;
           header('location:index.php');
          
       }

      
   

   if(isset($_GET['logout'])){
       session_destroy();
       unset($_SESSION['username']);
       header('location:index.php');
   }


}



?>


