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
	$query = 'SELECT * FROM `sanphammoi` WHERE `id` = '.$id.'';
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

}

 ?>