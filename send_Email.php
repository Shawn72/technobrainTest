<?php
error_reporting(E_ALL);

// NAME
$name_from = $_POST['name'];
// EMAIL
$email_from = $_POST['email'];
//Feedback Subject
$subject= $_POST['subject'];
// MESSAGE
$messageIs= $_POST['message'];

require_once('PHPMailer_5.2.4/PHPMailerAutoload.php');

$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPDebug =1;

$mail->SMTPSecure = 'ssl'; 
$mail->Host = "mail.paladin.co.ke";
$mail->Port = 465;
$mail->SMTPAuth = true;
$mail->Username = 'shawnwebtest@paladin.co.ke';
$mail->Password = '2950dre1234*';

$emailto='shawnwebtest@paladin.co.ke'; // Add recipients email address
//$name='Shawn'; // Add Your Recipient’s name
$mail->From = $email_from;
$mail->FromName =$name_from;
$mail->AddAddress($emailto);
//$mail->AddAddress ='shawnmbuvi@gmail.com';
$mail->WordWrap = 500;
$mail->IsHTML(true);
$mail->Subject= $subject;

$mail->Body = nl2br("Hello Paladin Support,\r\n \r\n $messageIs") ;//.$email. ',\n'.$messageIs;

$success=$mail->Send();

if ($success){
   echo "success";
   // echo nl2br("<html><body><h3>Your feedback sent successfully, we'll get back to you ASAP.\r\n Thank you for your continued support\r\n <a href='index.php#contact'>Go Back>>></a></h3></body></html>");
  }
else{
echo "Error occured while sending the feedback";
   // echo"Error sending mail!". $mail->ErrorInfo;
}
?>