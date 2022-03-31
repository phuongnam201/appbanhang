<?php 
include "connect.php";
$id = $_POST['id'];
$tensp = $_POST['tensp'];
$giasp = $_POST['giasp'];
$mota = $_POST['mota'];
$hinhanh = $_POST['hinhanh'];
$loaiSP = $_POST['loaiSP'];

//check id
$query = 'SELECT * FROM `sanphammoi` WHERE `id` = '.$id.'';
$data = mysqli_query($conn, $query);
$numrow = mysqli_num_rows($data);

if($numrow <= 0){
	$array = [
		'success' => false,
		'message' => "id khong ton tai",
	];
		
	
}else{
	$query = 'UPDATE `sanphammoi` SET `tensp`="'.$tensp.'",`hinhanh`="'.$hinhanh.'",`giasp`="'.$giasp.'",`mota`="'.$mota.'",`loaiSP`='.$loaiSP.' WHERE `id`= '.$id.'';

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