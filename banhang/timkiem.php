<?php 
include "connect.php";
$search = $_POST['search'];
if(empty($search)){
	$array = [ 
		'success' => false,
		'message' =>"that bai"
	];

}else{

$query = "SELECT * FROM `sanphammoi` WHERE `tensp` LIKE '%".$search."%'";
$data = mysqli_query($conn, $query);
$result = array();

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
}

print_r(json_encode($array));

?>