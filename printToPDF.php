<?php
//session_start();
include "db.php";
require('assets/fpdf/fpdf.php');
require('assets/fpdf/WriteHTML.php');

if($_SERVER["REQUEST_METHOD"] == "POST"){
$m=0;
$trans_date =date('Y-m-d H:i:s');

$pdfHTML=new PDF_HTML();
$pdfHTML->AliasNbPages();
$pdfHTML->AddPage('L', 'A4', 0);
$pdfHTML->tableHeader();

$pdfHTML->SetFont("Times", "B", 12);
$pdfHTML->WriteHTML("Report Name : Techno Brain Test");
$pdfHTML->WriteHTML("<br>");
$pdfHTML->WriteHTML("Mobile : 0731 628 560");
$pdfHTML->WriteHTML("<br>");
$pdfHTML->WriteHTML("Email : shawnmbuvi@gmail.com");
$pdfHTML->WriteHTML("<br>");
$pdfHTML->WriteHTML("Date : ".$trans_date);
$pdfHTML->WriteHTML("<br>");
$pdfHTML->SetFont("Arial");
$pdfHTML->WriteHTML("<br>");

$pdfHTML->headerTable();

$sql = "SELECT id, client_name, date_today, time_now, desposition, desposition_comments FROM technobraintest";
  $result = mysqli_query($con,$sql);
  $pdfHTML->SetFont('Times', '',12);
  if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_array($result)) {
      $client_name_ = $row['client_name'] ;
      $todaydate = $row['date_today'] ;
      $todaytime =$row['time_now'];
      $desposition = $row['desposition'];  
      $desposition_comments = $row['desposition_comments'];     
      $m++;

      $pdfHTML->Cell(20,10,$m, 1, 0, 'C');
      $pdfHTML->Cell(60,10,$client_name_, 1, 0, 'L');
      $pdfHTML->Cell(40,10,$todaydate, 1, 0, 'R');
      $pdfHTML->Cell(40,10,$todaytime, 1, 0, 'R');
      $pdfHTML->Cell(45,10,$desposition, 1, 0, 'R');
      $pdfHTML->Cell(100,10,$desposition_comments, 1, 0, 'L');
      $pdfHTML->Ln();
  }
}

  $pdfHTML->Ln();
  //$pdfHTML->WriteHTML("<br>");
  $pdfHTML->WriteHTML("Admin ID Number: ..........................." ."                 ");
  $pdfHTML->WriteHTML("Admin Signature: ............................");
  $pdfHTML->Ln(20);
  $pdfHTML->tableFooter();
  $pdfHTML->Output();
}
?>