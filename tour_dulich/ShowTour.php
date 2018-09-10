<head>
<style>
.sanpham
{
	float:left;
	margin-left:30px;
}

</style>
</head>
<?php
$conn=mysqli_connect('localhost','root','','ql_tourdulich') or die('Không kết nối được');

?>

	 <?php
	$sql = "select TenDiaDiem,tour.HinhAnh,tour.TenTour from tour,hanh_trinh,diadiem where tour.Ma_HT=hanh_trinh.Ma_HT and hanh_trinh.NoiDen=diadiem.MaDiaDiem";
	mysqli_query($conn,"set names 'utf8'");
	$dong_sp =mysqli_query($conn,$sql);
	if(mysqli_num_rows($dong_sp)> 0)
	{	
		$count=1;
		foreach($dong_sp as $dvv)
		{
			$tendd=$dvv['TenDiaDiem'];
			$hinh = $dvv['HinhAnh'];
			$tentour = $dvv['TenTour'];
			$count++;
			if($count%2==0)
			{
	?>
   		<div class="sanpham" style="width:50%;">
         <div class="tendd" style="font-size:30px;align:center"><?php global $tendd; echo $tendd;  ?></div> 
		<div class="Anh"><img style="height:200px; width:25%;" src="web_QLTourDuLich_php/tour_dulich/images/<?php echo $hinh ?>" alt=""> </a></div>
     <div class="tentour" style="font-size:20px"><a href="#"><?php global $tentour; echo $tentour;  ?></a></div> 
     </div>
<?php }
else {
	?>
	<div class="sanpham" style="width:50%;">
         <div class="tendd" style="font-size:30px;align:center"><?php global $tendd; echo $tendd;  ?></div> 
		<div class="Anh"><img style="height:200px; width:25%;" src="web_QLTourDuLich_php/tour_dulich/images/<?php echo $hinh ?>" alt=""> </a></div>
     <div class="tentour" style="font-size:20px"><a href="#"><?php global $tentour; echo $tentour;  ?></a></div> 
     </div>
     </div>
<?php } ?>
<?php } ?>
<?php } ?>

   
   
