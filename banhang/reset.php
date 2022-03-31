<?php
include "connect.php";
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';


$email = $_POST['email'];
$query = 'SELECT * FROM `user` WHERE `email` = "'.$email.'"';

$data = mysqli_query($conn, $query);
$result = array();

while ($row = mysqli_fetch_assoc($data)){
  $result[] = ($row);
}

  if(empty($result)){
    $array = [
      'success' => false,
      'message' => "Not found your email",
      'result' => $result
    ];
  }else{
    //print_r($result);
      $email=($result[0]['email']);
      $pass=($result[0]['pass']);

    $link="<a href='http://192.168.0.101/banhang/reset_pass.php?key=".$email."&reset=".$pass."'>Click To Reset password</a>";

    $mail = new PHPMailer();
    $mail->CharSet = "utf-8";

    $mail->IsSMTP();
    // enable SMTP authentication
    $mail->SMTPAuth = true;                  
    // GMAIL username
    $mail->Username = "nguyenphuongnam.contact@gmail.com";
    // GMAIL password
    $mail->Password = "phuongnam201";
    $mail->SMTPSecure = 'ssl';

    //fix 
    $mail->Host = 'smtp.gmail.com';
    $mail->Port = 465;



    $mail->From='nguyenphuongnam.contact@gmail.com';
    $mail->FromName='My Store';
    $mail->AddAddress($email, 'reciever_name');
    $mail->Subject  =  'Reset Password';
    $mail->IsHTML(true);
    $mail->Body    = $link;
    if($mail->Send()){
      $array = [
      'success' => true,
      'message' => "PLEASE check your email!",
      'result' => $result
      ];

    }else{
      $array = [
      'success' => false,
      'message' => "Not found your email",
      'result' => $mail->ErrorInfo
      ];
    }
  }


print_r(json_encode($array));

?>