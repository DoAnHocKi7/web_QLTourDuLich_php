<?php
    header('Location: http://localhost:8080/Khodulich/web_QLTourDuLich_php/tour_dulich/index.php');
          
?>

<?php

SESSION_START();
include ('connect.php');


$username="";
$password="";

if(isset($_POST['register']))
{

    $username=$_POST['email_dn'];

    $password=$_POST['password_dn'];

    
    $sql="select * from account where email='$username' and password='$password'";
    $result=mysqli_query($conn,$sql);
        if(mysqli_num_rows($result)==1)
        {

            $_SESSION["username"]=$username;
              
        }
    
    



    }

   

  


?>