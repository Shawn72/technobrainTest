<?php  
 require_once('db.php');
$output = '';
if(isset($_POST["export"]))
{
 $query = "SELECT * FROM technobraintest";
 $result = mysqli_query($con, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
        <tr>  
            <th>Sn/No.</th>  
            <th>Client Name</th>  
            <th>Date</th>  
            <th>Time</th>
            <th>Desposition</th>
            <th>Desposition Comments</th>
        </tr>
  ';
  while($row = mysqli_fetch_array($result))
  {
   $output .= '
    <tr>  
        <td>'.$row["id"].'</td>  
         <td>'.$row["client_name"].'</td>  
         <td>'.$row["date_today"].'</td>  
         <td>'.$row["time_now"].'</td>  
         <td>'.$row["desposition"].'</td>
         <td>'.$row["desposition_comments"].'</td>
    </tr>
   ';
  }
  $output .= '</table>';
  header('Content-Type: application/xls');
  header('Content-Disposition: attachment; filename=MyFeedBacks Report.xls');
  echo $output;
 }
}
?>