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
<main id="main"> 

    <section id="services">
      <div class="container">
        <div class="section-header">
          <h2>Customer Service Application</h2>         
        </div>

        <div class="row">
         
          <div ng-app="">
            <div class="wrap">
              <div>
                <label style="font-weight:bold">Click here to view</label>&nbsp;
                <form action="printToPDF.php" method="post" role="form">
                  <input type="submit" value="Generate  Report" class="btn btn-primary"/>&nbsp;
                  <a href="export2Xcel.php" class="btn btn-primary" role="button">View in Excel</a>
                </form>
              </div></br>
              <Label style="font-weight:bold">Customer wants to Talk?</label>
              
                <div>   
                  <input id="first" type="radio" name="content" ng-model="content" value="first"><label for="first">Yes</label>
                    <br />              
                  <input id="other" type="radio" name="content" ng-model="content" value="other"><label for="other">No</label>
                </div>

              <div class="wrapper">

                <div ng-show="content == 'first'">
                    <label style="font-weight:bold">Are you interested in the services we are offering?</label></br>
                    <input id="Yes" type="radio" name="content3" ng-model="content3" value="Yes"></input><label for="Yes">Yes</label></br>
                    <input id="No" type="radio" name="content3" ng-model="content3" value="No"></input><label for="Yes">No</label>
              
                    <div ng-show="content3 =='Yes'">
                      <label>Thank you Mr/Mrs/Ms Client Name</label>&nbsp;
                      <label>Have you heard about our company, ABCF?</label>  
                        <div>   
                          <input id="YesI" type="radio" name="content8" ng-model="content8" value="YesI"><label for="first">Yes</label>
                            <br />              
                          <input id="NoI" type="radio" name="content8" ng-model="content8" value="NoI"><label for="other">No</label>
                        </div>

                      <div ng-show="content8 =='YesI'">
                        <form>
                          <div class="form-group">
                            <label style="font-weight:bold">Client Name:</label>
                            <input type="text" name="nname" class="form-control" id="nYiname" placeholder="Enter Client Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                            <div class="validation"></div>
                            <div class="help-block with-errors"></div>
                          </div>
                        </form>
                      </div>

                      <div ng-show="content8 =='NoI'">
                        <label style="font-weight:bold; color:red;">The client has never heard of this company</label>
                      </div>
                      
                    </div>

                    <div ng-show="content3 =='No'">
                      <form>
                         <div class="form-group">
                          <label style="font-weight:bold">Client Name:</label>
                          <input type="text" name="nNname" class="form-control" id="nNname" placeholder="Enter Client Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                          <div class="validation"></div>
                          <div class="help-block with-errors"></div>
                        </div>
                        <label style="font-weight:bold">Call back later or the client ain't interested</label>&nbsp;
                     </form>
                      
                    </div>
                </div>

                <div ng-show="content == 'other'" >
                  <label style="font-weight:bold">Can i talk to Mr./Mrs.Client name?</label></br>
                    <input id="Yes" type="radio" name="content2" ng-model="content2" value="Yes"></input><label for="Yes">Yes</label></br>
                    <input id="No" type="radio" name="content2" ng-model="content2" value="No"></input><label for="Yes">No</label>
                                
                    <div ng-show="content2 =='Yes'">  
                      <form action="insertIfNo.php" method="post" role="form" id="IfYes" class="contactForm"> 
                        <div class="form-group">
                          <label style="font-weight:bold">Client Name:</label>
                          <input type="text" name="name" class="form-control" id="name" placeholder="Enter Client Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                        </div>
                        <div class="form-group">
                        <label style="font-weight:bold">Date:</label>
                              <div class="input-group date" id="dpcker">
                                  <input type="text" class="form-control" id="dateofBirth"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                              </div>
                        </div>
                        <div class="form-group">
                          <label style="font-weight:bold">Time:</label>
                              <button type="button" id="setTimeButton">Pick Time</button>
                              <input id="setTimeExample" type="text" class="time" disabled="disabled" />
                        </div>
                         <div class="form-group">
                            <input type="submit" value="Save Info" class="btn btn-primary"/>
                        </div>
                      </form>  
                    </div>

                    <div ng-show="content2 =='No'">
                      <form action="insertToDB.php" method="post" role="form" id="IfNo" class="contactForm"> 
                        <div class="form-group">
                        <label style="font-weight:bold">Client Name:</label>
                          <input type="text" name="cname" class="form-control" id="cname" placeholder="Enter Client Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                          <div class="validation"></div>
                          <div class="help-block with-errors"></div>
                        </div>
                        <label style="font-weight:bold">Choose despositions here</label>
                        <fieldset>
                          <select id = "selDesposition" name = "selDesposition" class="form-control">
                          <option value = "Phone Switched off">Phone Switched off</option>
                          <option value = "No Answer">No Answer</option>
                          <option value = "Phone Busy">Phone Busy</option>
                          <option value = "Silent Call">Silent Call</option>
                          <option value = "Number out of service">Number out of service</option>
                          <option value = "Invalid">Invalid</option>
                          <option value = "Voice mail">Voice mail</option>
                          </select>                    
                        </fieldset>   
                        </br>             
                        <div class="form-group">
                          <label style="font-weight:bold">Desposition comments</label>
                          <input type="text" class="form-control" name="comment" id="comment" placeholder="Desposition Comments" data-rule="minlen:8" data-msg="Please enter at least 8 chars of subject" />
                        </div>
                         <div class="form-group">
                            <input type="submit" value="Submit Info" class="btn btn-primary"/>
                          </div>
                      </form>
                    </div>
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
