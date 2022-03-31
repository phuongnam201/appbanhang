<?php 
include "connect.php";
$page = $_POST['page'];
$total = 5; // cần lấy 5 sp trên 1 trang
$pos =($page-1)*$total; // 0,5	5,5
$loaiSP = $_POST['loaiSP'];

$query = 'SELECT * FROM `sanphammoi` WHERE `loaiSP` = '.$loaiSP.' LIMIT '.$pos.','.$total.'';

$data = mysqli_query($conn, $query);
$result = array();

while ($row = mysqli_fetch_assoc($data)){
	$result[] = ($row);
}

if(!empty($result)) {

	$array = [ 
		'success' => true,
		'message' =>"thanh cong",
		'result' => $result
	];
}

else{
		$array = [ 
		'success' => false,
		'message' =>"that bai",
		'result' => $result
	];

}

print_r(json_encode($array));
 ?>