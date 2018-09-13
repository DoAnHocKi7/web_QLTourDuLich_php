<?php
    $conn=mysqli_connect("localhost","root","","ql_tourdulich");

    if (mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    else{
        mysqli_set_charset($conn,"utf8");
    }
    

   



?>