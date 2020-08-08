
<?php 
include('studentadmin/conn.php');
if(isset($_POST['submitt'])){
$sname= $_POST['sname'];
$spwd = $_POST['spwd'];
$login = "SELECT * FROM student WHERE sname = '$sname' && spwd = '$spwd'";
$result = mysqli_query($conn,$login);
$row = mysqli_fetch_array($result);
  
  if($row['sname']==$sname and $row['spwd']==$spwd){
       $_SESSION['sname'] = $row['sname'];
   
    header("location:studentadmin/index.php");
  } 
  else{
  
     echo" <script> alert('You Enter Wrong Username or Password');</script>";
   
  }
}
?>
<?php 
include('teacheradmin/conn.php');
if(isset($_POST['submit'])){
$tname= $_POST['tname'];
$tpwd = $_POST['tpwd'];
$login = "SELECT * FROM teacher WHERE tname = '$tname' && tpwd = '$tpwd'";
$result = mysqli_query($conn,$login);
$row = mysqli_fetch_array($result);
  
  if($row['tname']==$tname and $row['tpwd']==$tpwd){
       $_SESSION['tname'] = $row['tname'];
    
    header("location:teacheradmin/index.php");
  } 
  else{
  
     echo" <script> alert('You Enter Wrong Username or Password');</script>";
   
  }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tutor Online</title>
    <link rel="apple-touch-icon" sizes="180x180" href="mainsite/assets/images/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="mainsite/assets/images/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="mainsite/assets/images/favicons/favicon-16x16.png">
    <link rel="manifest" href="mainsite/assets/images/favicons/site.webmanifest">

    <!-- plugin scripts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,500i,600,700,800%7CSatisfy&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="mainsite/assets/css/animate.min.css">
    <link rel="stylesheet" href="mainsite/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="mainsite/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="mainsite/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="mainsite/assets/plugins/fontawesome-free-5.11.2-web/css/all.min.css">
    <link rel="stylesheet" href="mainsite/assets/plugins/kipso-icons/style.css">
    <link rel="stylesheet" href="mainsite/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="mainsite/assets/css/vegas.min.css">
    

    <!-- template styles -->
    <link rel="stylesheet" href="mainsite/assets/css/style.css">
        <link rel="stylesheet" href="mainsite/assets/css/responsive.css">
        <style>
.register{  
    margin-top: 3%;
    padding: 3%;
    background-color:#022c46;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 200px;;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
   
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
  
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #f56e2c;
    border-radius: .5rem;
    width: 28%;
    float: right;
    padding:10px;
    }
.register .nav-tabs .nav-link{
    padding:2%;
    padding-bottom:35px;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: .5rem;
    border-bottom-right-radius: .5rem;
    
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: .5rem;
    border-bottom-left-radius: .5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color:#022c46 ;
}
.form{
	margin-top:180px;
}
.input-group{
	width:430px;
    margin-top:30px;
	border:none;
	margin-left:160px;
}
.btn {
		margin-top:30px;
			width: 20%;
			height:35px;
			background:  #f16101 !important;
			color: white !important;
			border:none;
			border-radius:5px;
}
.input-group-text{
	background-color:#f16101;
}

</style>
</head>

<body>
    <div class="preloader"></div><!-- /.preloader -->
    <div class="page-wrapper">
        <div class="topbar-one">
            <div class="container">
                <div class="topbar-one__left">
                    <a href="#">tutoronline@gmail.com</a>
                    <a href="#">0300 0000000</a>
                </div><!-- /.topbar-one__left -->
                            </div><!-- /.container -->
        </div><!-- /.topbar-one -->
        <header class="site-header site-header__header-one site-header__inner-page ">
            <nav class="navbar navbar-expand-lg navbar-light header-navigation stricky">
                <div class="container clearfix">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="logo-box clearfix">
                        <a class="navbar-brand" href="mainsite/index.php">
                            <img src="mainsite/assets/images/logo-dark.png" class="main-logo" width="128" alt="Logo" />
                        </a>
                        
                        <div class="header__social">
     <a href="https://twitter.com/home"><i class="fab fa-twitter"></i></a>
  <a href="https://www.facebook.com/TutorOnline-107264741072039"><i class="fab fa-facebook-square"></i></a>
                            <a href="https://www.pinterest.com/business/hub/"><i class="fab fa-pinterest-p"></i></a>
                            <a href="https://www.instagram.com/tutoronine/"><i class="fab fa-instagram"></i></a>
                        </div><!-- /.header__social -->
                        <button class="menu-toggler" data-target=".main-navigation">
                            <span class="kipso-icon-menu"></span>
                        </button>
                    </div><!-- /.logo-box -->
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="main-navigation">
                        <ul class=" navigation-box">
                            <li class="current">
                                <a href="mainsite/index.php">Home</a>
                             </li>
                            <li>
                                <a href="mainsite/about.php">About Us</a>
                                  </li>
                            <li>
                                <a href="mainsite/courses.php">Courses</a>
                               </li>
                            <li>
                                <a href="mainsite/teachers.php">Teachers</a>
                                                           </li>
                                                       <li>
                                <a href="mainsite/contact.php">Contact</a>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                                   </div>
                <!-- /.container -->
            </nav>
            <div class="site-header__decor">
                <div class="site-header__decor-row">
                    <div class="site-header__decor-single">
                        <div class="site-header__decor-inner-1"></div><!-- /.site-header__decor-inner -->
                    </div><!-- /.site-header__decor-single -->
                    <div class="site-header__decor-single">
                        <div class="site-header__decor-inner-2"></div><!-- /.site-header__decor-inner -->
                    </div><!-- /.site-header__decor-single -->
                    <div class="site-header__decor-single">
                        <div class="site-header__decor-inner-3"></div><!-- /.site-header__decor-inner -->
                    </div><!-- /.site-header__decor-single -->
                </div><!-- /.site-header__decor-row -->
            </div><!-- /.site-header__decor -->
        </header><!-- /.site-header -->
        <section class="inner-banner"  style="background-image:url('mainsite/assets/images/mainbanner.jpg'); height:350px;">
            <div class="container">
                <ul class="list-unstyled thm-breadcrumb">
                    <li style="font-size:50px;" ><a href="index.php">Home</a><a href="login.php" >&nbsp;>&nbsp;Login</a></li>
                                  </ul><!-- /.list-unstyled -->
                          </div><!-- /.container -->
        </section><!-- /.inner-banner -->
        <section class="contact-info-one">
           	
   	<div class="container register " id="id01"  style="margin-bottom:50px; height:500px;" >
                <div class="row">
                    <div class="col-md-3 register-left" style=" height:350px;">
                        <img src="mainsite/assets/images/preloader.gif" />
                        <h3 style="margin-top:-30px;">Welcome</h3>
                        <p >TUTOR ONLINE has one simple objective: To bring tutors and students together.</p>
                        <a href="register.php"><input type="submit" name="" value="Register" style="margin-top:-17px;"/></a><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">As Student</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">As Teacher</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Login as Student</h3>
                                
                      <form action=" " method="post" class="form">
									<div class="input-group ">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
			<input type="text" name="sname" class="form-control input_user input" value="" placeholder="username">
						</div>
						<div class="input-group mb-2 ">
							<div class="input-group-append">
								<span class="input-group-text" ><i class="fas fa-key "></i></span>
							</div>
							<input type="password" name="spwd" class="form-control input_pass input" value="" placeholder="password">
						</div>
						<div class="form-group">
													</div>
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="submit" name="submitt" class="btn login_btn">Login</button>
				
				   </div>
				 
					</form>
<h6 class="mt-2" style=" margin-left:310px;">Forget Password?<a href="forgetpwd/sforgetpwd.php" >Click Here!</a></h6>
					
					
					

                            </div>
                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Login As Teacher</h3>
        <form action=" "method="post" class="form">
									<div class="input-group ">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="tname" class="form-control input_user input" value="" placeholder="username">
						</div>
						<div class="input-group mb-2 ">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="tpwd" class="form-control input_pass input" value="" placeholder="password">
						</div>
						<div class="form-group">
													</div>
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="submit" name="submit" class="btn login_btn">Login</button>
				   </div>
					</form>
					<h6 class="mt-2" style=" margin-left:310px;">Forget Password?<a href="forgetpwd/tforgetpwd.php" >Click Here!</a></h6>                            </div>
                          
                                                    </div>
                    </div>
                </div>

         </div>
   	  	
   	
        </section><!-- /.contact-one -->

                <footer class="site-footer">
            <div class="site-footer__upper">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-6 col-sm-12">
                            <div class="footer-widget footer-widget__contact">
                                <h2 class="footer-widget__title">Courses</h2><!-- /.footer-widget__title -->              <ul class="list-unstyled footer-widget__link-list">
                                        <li><a href="miansite/course.php">Photography</a></li>
                                        <li><a href="miansite/courses.php">Business</a></li>
                                        <li><a href="miansite/courses.php">SEO</a></li>
                                        <li><a href="miansite/courses.php">Languages</a></li>
                                          <li><a href="miansite/courses.php">Marketing </a></li>
                                    </ul><!-- /.footer-widget__link-list -->
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-lg-3 -->
                        <div class="col-xl-3 col-lg-6 col-sm-12">
                            <div class="footer-widget footer-widget__link">
                                <h2 class="footer-widget__title">Explore</h2><!-- /.footer-widget__title -->
                                <div class="footer-widget__link-wrap">
                                    <ul class="list-unstyled footer-widget__link-list">
                                        <li><a href="miansite/miansite/about.php">About</a></li>
                                        <li><a href="miansite/contact.php">Contact</a></li>
                                        <li><a href="miansite/teachers.php">Teachers</a></li>
                                        <li><a href="miansite/register.php">Join Us</a></li>
                                     <li><a href="miansite/faq.php">Help </a></li>
                                    </ul><!-- /.footer-widget__link-list -->
                                 </div><!-- /.footer-widget__link-wrap -->
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-lg-3 -->
                        <div class="col-xl-3 col-lg-6 col-sm-12">
                            <div class="footer-widget footer-widget__gallery">
                                <h2 class="footer-widget__title">Gallery</h2><!-- /.footer-widget__title -->
                                <ul class="list-unstyled footer-widget__gallery-list">
                                    <li><img src="miansite/assets/images/f1.jpg" alt=""></li>
                                    <li><img src="miansite/assets/images/f2.jpg" alt=""></li>
                                    <li><img src="miansite/assets/images/f3.jpg" alt=""></li>
                                    <li><img src="miansite/assets/images/f4.jpg" alt=""></li>
                                    <li><img src="miansite/assets/images/f5.jpg" alt=""></li>
                                    <li><img src="miansite/assets/images/f6.jpg" alt=""></li>
                                </ul><!-- /.footer-widget__gallery -->
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-lg-3 -->
                        <div class="col-xl-3 col-lg-6 col-sm-12">
                            <div class="footer-widget footer-widget__about">
                                <h2 class="footer-widget__title">About</h2><!-- /.footer-widget__title -->
                                <p class="footer-widget__text">TUTOR ONLINE has one simple objective: To bring tutors and students together</p><!-- /.footer-widget__text -->
                                <div class="footer-widget__btn-block">
                                    <a href="mainsite/contact.php" class="thm-btn">Contact</a><!-- /.thm-btn -->
                                    <a href="miansite/register.php" class="thm-btn">Register</a><!-- /.thm-btn -->
                                </div><!-- /.footer-widget__btn-block -->
                            </div><!-- /.footer-widget -->
                        </div><!-- /.col-lg-3 -->
                    </div><!-- /.row -->
                </div><!-- /.container -->
            </div><!-- /.site-footer__upper -->
            <div class="site-footer__bottom">
                <div class="container">
                    <p class="site-footer__copy">&copy; Copyright 2020 by <a href="mainsite/index.php">tutoronline.com</a></p>
                    <div class="site-footer__social">
                        <a href="#" data-target="html" class="scroll-to-target site-footer__scroll-top"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
                        <a href="https://twitter.com/home"><i class="fab fa-twitter"></i></a>
                        <a href="https://www.facebook.com/TutorOnline-107264741072039"><i class="fab fa-facebook-square"></i></a>
                        <a href="https://www.pinterest.com/business/hub/"><i class="fab fa-pinterest-p"></i></a>
                        <a href="https://www.instagram.com/tutoronine/"><i class="fab fa-instagram"></i></a>
                    </div><!-- /.site-footer__social -->
                    <!-- /.site-footer__copy -->
                </div><!-- /.container -->
            </div><!-- /.site-footer__bottom -->
        </footer><!-- /.site-footer -->                
   </div><!-- /.page-wrapper -->

    <script src="mainsite/assets/js/jquery.min.js"></script>
    <script src="mainsite/assets/js/bootstrap.bundle.min.js"></script>
    <script src="mainsite/assets/js/owl.carousel.min.js"></script>
    <script src="mainsite/assets/js/waypoints.min.js"></script>
    <script src="mainsite/assets/js/jquery.counterup.min.js"></script>
    <script src="mainsite/assets/js/TweenMax.min.js"></script>
    <script src="mainsite/assets/js/wow.js"></script>
    <script src="mainsite/assets/js/jquery.magnific-popup.min.js"></script>
    <script src="mainsite/assets/js/countdown.min.js"></script>
    <script src="mainsite/assets/js/vegas.min.js"></script>
    <script src="mainsite/assets/js/jquery.validate.min.js"></script>
    <script src="mainsite/assets/js/jquery.ajaxchimp.min.js"></script>

    <!-- template scripts -->
    <script src="mainsite/assets/js/theme.js"></script>
</body>
</html>
<script>
	function triggerClick(e) {
  document.querySelector('#profileImage').click();
}
function displayImage(e) {
  if (e.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e){
      document.querySelector('#profileDisplay').setAttribute('src', e.target.result);
    }
    reader.readAsDataURL(e.files[0]);
  }
}
	</script>
	<script>
	function triggerClickk(e) {
  document.querySelector('#profileImagee').click();
}
function displayImagee(e) {
  if (e.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e){
      document.querySelector('#profileDisplayy').setAttribute('src', e.target.result);
    }
    reader.readAsDataURL(e.files[0]);
  }
}
	</script>
