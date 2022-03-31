<?php 
include "connect.php";
$query = "SELECT * FROM `sanphammoi` ORDER BY id DESC";
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