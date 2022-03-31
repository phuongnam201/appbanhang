<?php 
include "connect.php";
$email = $_POST['email'];
$pass = $_POST['pass'];
$username = $_POST['username'];
$phone = $_POST['phone'];




//check email
$query = 'SELECT * FROM `user` WHERE `email` = "'.$email.'"';
$data = mysqli_query($conn, $query);
$numrow = mysqli_num_rows($data);

if($numrow > 0){
	$array = [
		'success' => false,
		'message' => "email da ton tai",
	];
		
	
}else{
	$query = 'INSERT INTO `user`(`email`, `pass`, `username`, `phone`) VALUES ("'.$email.'","'.$pass.'","'.$username.'","'.$phone.'")';

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