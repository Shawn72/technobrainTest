<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Paladin Company Limited - A Mombasa Road, Nairobi based Certified Microsoft Dynamics Nav service provider in Kenya</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta name="google-site-verification" content="-xxwigIGmBDm3cg9KcFVmtu44XGs2cUMfu5B905lzNA" />
  <meta name="keywords" content="Most highest paladin nairobi, top most paladin company, highest paladin limited, most paladin company ltd">
  <meta name="description" content="Paladin Company Ltd in Nairobi, Mombasa road is the best Microsoft Nav service provider" >

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
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
  <link href="css/custom.css" rel="stylesheet">
  <link href="css/tstcss.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  
</head>
 <h1 style="display:none;">Paladin Company Limited</h1>

<body id="body">
 <?php include_once('headers.php'); ?>
 <br/>
  <main id="main">
       <section id="contact" class="wow fadeInUp">
      <div class="container">
        <div class="form">
          <div id="sendmessage" style="width:100%; height:100%; ">Your feedback message successfully sent!</div>
          <div id="errormessage" style="width:100%; height:100%;">Error Sending Feedback, try again later!</div>
            <!--<div id="wait" style="display:none;width:69px;height:89px;border:1px solid black;position:absolute;top:50%;left:50%;padding:2px;">-->
            <!--<img src='img/demo_wait.gif' width="64" height="64" /><br>Sending...wait!</div>-->
            <div class="wait overlay">
            	<div class="modal"></div>
            </div>
          <form action="send_Email.php" method="post" role="form" class="contactForm" id="submitmyASS">
           
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
                <div class="help-block with-errors"></div>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <a href="privacy_policy.php">Our Privacy Policy</a>
                <div class="validation"></div>
                <div class="help-block with-errors"></div>
              </div>
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:8" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validation"></div>
              <div class="help-block with-errors"></div>
            </div>
            <div class="form-group" ng-app="checkboxApp" ng-controller="checkboxCtrl">
                <input type="checkbox" ng-model="chkselct" ng-click="checkvalidation();" id="chkMyASS" onclick="myCheckedBox()">Agreed to Terms and Conditions of our privacy policy <br />
                <span style="color:red;" ng-show="validationmsg">Please Agree to our privacy policy first</span><br />
            </div>
            <div class="text-center"><button type="submit" id="btnsubmit" ng-hide="hiddenButton" style="display:none">Send Message</button></div>
          </form>
        </div>

      </div>
    </section><!-- #contact -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Paladin Company Limited</strong> &#160;&nbsp; - <?php echo date("Y"); ?>. All Rights Reserved  
      </div>
      <div class="credits">
      <p class="copyright" style="color:#DE6E1E;">Design by: 
      <a href="https://www.linkedin.com/in/shawn-andre-mbuvi-02062682/" target="_blank">&#160;&nbsp;Southern 23DynastyCo</a></p>
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
  <script src="contactform/contactform.js" async></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWzaIM_9C7Fyv-u4cX5Pxu4k0SWhC97TU&callback=initMap"></script>
  
  <!-- Contact Form JavaScript File -->
  <script src="contactform/form.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>
</html>
