<?php 
include "connect.php";
$iduser = $_POST['iduser'];
$email = $_POST['email'];
$diachi = $_POST['diachi'];
$soluong = $_POST['soluong'];
$tongtien = $_POST['tongtien'];
$sdt = $_POST['sdt'];
$chitiet = $_POST['chitiet'];


$query = 'INSERT INTO `donhang`(`iduser`, `email`, `diachi`, `soluong`, `tongtien`, `sodienthoai`) 
				VALUES ('.$iduser.', "'.$email.'", "'.$diachi.'", '.$soluong.', "'.$tongtien.'", "'.$sdt.'")';

$data = mysqli_query($conn, $query);

if($data == true) {
	$query = 'SELECT id AS iddonhang FROM `donhang` WHERE `iduser` = '.$iduser.' ORDER BY id DESC LIMIT 1';
	$data = mysqli_query($conn, $query);


	while($row = mysqli_fetch_assoc($data)){
		$iddonhang = ($row);
	}


	if(!empty($iddonhang)){
		//co don hang
		$chitiet = json_decode($chitiet, true);

		foreach($chitiet as $key => $value){
			$truyvan = 'INSERT INTO `chitietdonhang`(`iddonhang`, `idsp`, `soluong`, `giasp`) VALUES ('.$iddonhang["iddonhang"].', '.$value["idsp"].', '.$value['soluong'].', "'.$value["giasp"].'")';
				$data = mysqli_query($conn, $truyvan);
		}


		if($data == true){
			$array = [
				'success' => true,
				'message' => "thanh cong"
				];
		}else{
			$array  = [
				'success' =>false,
				'message' => "khong thanh cong"
				];
			}

			print_r(json_encode($array));
		}



}else{
	$array = [ 
		'success' => false,
		'message' =>"that bai"
	];
	}



?>
