<?php 
include "connect.php";
$tensp = $_POST['tensp'];
$giasp = $_POST['giasp'];
$mota = $_POST['mota'];
$hinhanh = $_POST['hinhanh'];
$loaiSP = $_POST['loaiSP'];



$query = 'SELECT * FROM `sanphammoi` WHERE `tensp` = "'.$tensp.'"';
$data = mysqli_query($conn, $query);
$numrow = mysqli_num_rows($data);

if($numrow > 0){
	$array = [
		'success' => false,
		'message' => "san pham da ton tai",
	];
		
	
}else{
	$query = 'INSERT INTO `sanphammoi`(`tensp`, `hinhanh`, `giasp`, `mota`, `loaiSP`) VALUES ("'.$tensp.'", "'.$hinhanh.'", "'.$giasp.'", "'.$mota.'",'.$loaiSP.')';

	$data = mysqli_query($conn, $query);


	if($data == true) {

		$array = [ 
			'success' => true,
			'message' =>"thanh cong",
		];
	}else{
		$array = [ 
		'success' => false,
		'message' =>"that bai",
	];

	}
}




print_r(json_encode($array));
 ?>