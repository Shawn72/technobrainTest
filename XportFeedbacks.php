<?php
include('db.php');

$sql = "SELECT * FROM technobraintest";
$result = mysqli_query($con,$sql);

$columnHeader ='';
$columnHeader = "Sr/No"."\t"."Client Name"."\t"."Date"."\t"."Time"."\t"."Desposition"."\t"."Desposition Comments"."\t";

$setData='';

while($rec = mysqli_fetch_array($result)){
  $rowData = '';
  foreach($rec as $value)
  {
    $value = '"' . $value . '"' . "\t";
    $rowData .= $value;
  }
  $setData .= trim($rowData)."\n";
}


header("Content-type: application/xls");
header("Content-Disposition: attachment; filename=Client Feedback Reports.xls");
header("Pragma: no-cache");
header("Expires: 0");

echo ucwords($columnHeader)."\n".$setData."\n";

?>
