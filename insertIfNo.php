<?php
date_default_timezone_set('Africa/Nairobi');
require_once('db.php');
if($_SERVER['REQUEST_METHOD']=='POST'){

 $name = mysqli_real_escape_string($con,$_POST['name']);
 $date_yaleo = date('Y-m-d H:i:s');
 $time_sahii = date('H:i:s'); 

if($name == ''){
echo '<html><p style="color:red">Please provide client Name!!<a href="index.php">&nbsp;go Back</a></p></html>';
}
else{			
$sql = "INSERT INTO technobraintest (id, client_name, date_today, time_now, desposition, desposition_comments)
VALUES('','$name','$date_yaleo', '$time_sahii','','')";

if(mysqli_query($con,$sql)){
echo '<html><p style="color:green">Feedback Successfully recorded!<a href="index.php">&nbsp;go Back</a></p></html>';                                    
}else{
//echo 'failure';
echo("MySQL Error Occurred: " . mysqli_error($con));				
   }
  }
mysqli_close($con);
}
?>