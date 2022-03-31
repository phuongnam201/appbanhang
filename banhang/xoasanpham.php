<?php 
include "connect.php";
$id = $_POST['id'];





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
	$query = 'DELETE FROM `sanphammoi` WHERE `id` = '.$id.'';

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