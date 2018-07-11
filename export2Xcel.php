<!DOCTYPE html>
<html lang="en">
 
<head>
  <meta charset="utf-8">
  <title>Shawn@Technobrain Test - This is a test project loacated on my head</title>
     
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="google-site-verification" content="-xxwigIGmBDm3cg9KcFVmtu44XGs2cUMfu5B905lzNA" />
  <meta name="keywords" content="Most highest paladin nairobi, top most paladin company, highest paladin limited, most paladin company ltd">
  <meta name="description" content="Paladin Company Ltd in Nairobi, Mombasa road is the best Microsoft Nav service provider" >

  <!-- Favicons -->
  <link href="img/tecnoB.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/tstcss.css" rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>      
  <link href="DatePicker/bootstrap/css/bootstrap-datepicker3.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="TimePicker/jquery.timepicker.css" />
  
</head>
<body id="body">
 <?php include_once('headers.php'); ?>
 <?php include_once('corousel.php'); ?>
 <?php require_once('db.php'); ?>
<main id="main"> 

    <section id="services">
      <div class="container">
        <div class="section-header">
          <h2>Export to Excel</h2>         
        </div>
    <div class="row">
         
    <div class="panel">
    <div class="panel-heading">
      <h3>Export Clients feedbacks into Excel Sheet</h3>
      <div class="panel-body">
        <div class="table-responsive">  
        
        <table class="table table-bordered">
            <tr>  
                <th>Sn/No.</th>  
                <th>Client Name</th>  
                <th>Date</th>  
                <th>Time</th>
                <th>Desposition</th>
                <th>Desposition Comments</th>
            </tr>

        <?php    
            $sql = "SELECT * FROM technobraintest";  
            $result = mysqli_query($con, $sql);
            while($row = mysqli_fetch_array($result))  
            {  
            echo '  
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
        ?>
        </table>
        <br />
        <form method="post" action="xPexcel.php">
            <input type="submit" name="export" class="btn btn-success" value="Export" />
        </form>
    </div>    				
    		
      </div>
    </div>
  </div>
  </div>

</div>
</section>

</main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Shawn23</strong> &#160;&nbsp; - <?php echo date("Y"); ?>. All Rights Reserved  
      </div>
      <div class="credits">
      <p class="copyright" style="color:#DE6E1E;">Design by: 
      <a href="https://www.linkedin.com/in/shawn-andre-mbuvi-02062682/" target="_blank">&#160;&nbsp;Shawn Andre</a></p>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="lib/sticky/sticky.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


   <!-- Datepicker  -->
    <script type="text/javascript" src="DatePicker/bootstrap/js/bootstrap-datepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="DatePicker/bootstrap/js/year-select.js" charset="UTF-8"></script>  
 	<script src="TimePicker/jquery.timepicker.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/form.js"></script>
<script type="text/javascript" src="wickedpicker.js"></script>
  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

  <script>
			$(function() {
				$('#setTimeExample').timepicker();
				$('#setTimeButton').on('click', function(e) {
          // e.preventDefault()
					$('#setTimeExample').timepicker('setTime', new Date());
				});
			});
			</script>

  <script>
function initMap()
{
    var myLatLng = {lat: -1.32369, lng: 36.84436};

      var googleMP = new google.maps.Map(document.getElementById('google-map'), {
          zoom: 17,
          center: myLatLng
        });

    var marker = new google.maps.Marker({
      position: myLatLng,
      map: googleMP,
      title: 'Paladin',
      animation: google.maps.Animation.BOUNCE
    });
}
</script>
   <script type="text/javascript">
        $('.input-group.date').datepicker({
            format: "mm/dd/yy",
            maxViewMode: 3,
            todayBtn: true,
            clearBtn: true,
            autoclose: true,
            calendarWeeks: true,
            toggleActive: true
        });
    </script>

    <script type="text/javascript">
    
    </script>

</body>
</html>
