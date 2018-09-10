
<?php
    session_start();
   include ('C:\xampp\htdocs\Khodulich\web_QLTourDuLich_php\tour_dulich\conect.php');
    
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

       if(empty($username))
       {
           array_push($errors,"Bạn nhập thiếu gmail");
           
       }
       if(empty($password))
       {
           array_push($errors,"Bạn nhập thiếu password");
           
       }
       if(empty($phone))
       {
           array_push($errors,"Bạn nhập thiếu số phone");
           
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
           $sql="INSERT INTO account (ID,Email, Password,Phone,Sex,Address) VALUES 
           ('','$username','$password','$phone','$sex','$diachi')";
           mysqli_query($conn,$sql);

           $_SESSION['username']=$username;
           header('location:index.php');
          
       }

      
   }

   if(isset($_GET['logout'])){
       session_destroy();
       unset($_SESSION['username']);
       header('location:index.php');
   }



?>


