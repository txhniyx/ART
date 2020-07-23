
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%-- <%@ page import="javax.portlet.PortletPreferences" %> --%>
<%-- <%@ taglib uri="/WEB-INF/tld/liferay-portlet.tld" prefix="portlet" %>
<portlet:defineObjects /> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Paintings</title>
<link rel="stylesheet" href="css/frontpage.css">

<!-- <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<script type="text/javascript" src="js/materialize.min.js"></script>  -->

	<script type="text/javascript" href="js/frontpage.js"></script>
 -<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Courier New:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	Animate.css
	<link rel="stylesheet" href="css/animate.css">
	Icomoon Icon Fonts
	<link rel="stylesheet" href="css/icomoon.css">
	Magnific Popup
	<link rel="stylesheet" href="css/magnific-popup.css">
	Salvattore
	<link rel="stylesheet" href="css/salvattore.css">
	Theme Style
	<link rel="stylesheet" href="css/style1.css">
	Modernizr JS
	<script src="js/modernizr-2.6.2.min.js"></script> -->
</head>
<h1>Online Art Gallery</h1>
<body>
<div class="navbar">
  <a href="frontpage.jsp">Home</a>
  <a href="About_us.jsp">About Us</a>
   <a href="My_profile.jsp">My Profile</a>
   <a href="Exhibition.jsp">Exhibitions</a>
     <a href="upload_paintings.jsp">Upload Paintings</a>
     <a href="Paintings.jsp">Paintings</a>
      <a href="frontpage.jsp">Logout</a>
  
<!--   <div class="dropdown1">
    <button class="dropbtn1">SignUp
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content1">
      <a href="index.jsp">Artist</a>
      <a href="#">Customer</a>
    </div>
  </div>
  <div class="dropdown1">
    <button class="dropbtn1">Login
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content1">
      <a href="index1.jsp">Admin</a>
      <a href="index1.jsp">Customer</a>
      <a href="index.jsp">Artist</a>
    </div>
  </div>-->
</div>

 <!-- <img src="Images/nature1.jpg">
<img src="Images/nature2.jpg">
<img src="Images/nature3.jpg">
<img src="Images/nature4.jpg">
<div class="slider">
    <ul class="slides">
      <li>
        <img src="Images/1.jpg">
             <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
       <li>
        <img src="Images/2.jpg" > random image
        <div class="caption left-align">
          <h3>Left Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="Images/3.jpg"> random image
        <div class="caption right-align">
          <h3>Right Aligned Caption</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li>
      <li>
        <img src="Images/4.jpg"> random image
        <div class="caption center-align">
          <h3>This is our big Tagline!</h3>
          <h5 class="light grey-text text-lighten-3">Here's our small slogan.</h5>
        </div>
      </li> 
    </ul>
  </div> 
  <br>
   <div class="slideshow-container">
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="WebContent/Images/nature3.jpg" style="width:100%">
    <div class="text">Caption Text</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="Images/nature3.jpg" style="width:100%">
    <div class="text">Caption Two</div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="Images/nature3.jpg" style="width:100%">
    <div class="text">Caption Three</div>
  </div>

  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
<style>
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;}
.mySlides {
	display:none;
	/* height: 1vw !important;  */
	}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>

<h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Images/1.jpg" style="width:100%;height:30vw">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="Images/2.jpg" style="width:100% ;height:30vw">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="Images/3.jpg" style="width:100%;height:30vw">
  <div class="text">Caption Three</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}--> -->
</script> 
 <div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>


<div class="item">
        		<div class="animate-box">
	        		<a href="images/aart.jpg" class="image-popup fh5co-board-img"><img src="images/aart.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Colour Pencils</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/Art.jpg" class="image-popup fh5co-board-img"><img src="images/Art.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">HEY</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/hill.jpg" class="image-popup fh5co-board-img"><img src="images/hill.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Hill</div>
        		</div>
        	</div>
        	
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/imgggg.jpg" class="image-popup fh5co-board-img"><img src="images/imgggg.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Doggy</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/imgzzz.jpg" class="image-popup fh5co-board-img"><img src="images/imgzzz.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Splash</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/imm.jpg" class="image-popup fh5co-board-img"><img src="images/imm.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Trees</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/immmgg.jpg" class="image-popup fh5co-board-img"><img src="images/immmgg.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Seascape</div>
        		</div>
        	</div>
        	
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/rain.jpg" class="image-popup fh5co-board-img"><img src="images/rain.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">Rain</div>
        		</div>
        	</div>
        

        </div>
        </div>
       </div>
	</div>

	<footer id="fh5co-footer">
		
		<div class="container">
			<div class="row row-padded">
				<div class="col-md-12 text-center">
					<p class="fh5co-social-icons">
						<a href="#"><i class="icon-twitter"></i></a>
						<a href="#"><i class="icon-facebook"></i></a>
						<a href="#"><i class="icon-instagram"></i></a>
						<a href="#"><i class="icon-dribbble"></i></a>
						<a href="#"><i class="icon-youtube"></i></a>
					</p>
					
				</div>
			</div>
		</div>
	</footer>


	jQuery
	<script src="js/jquery.min.js"></script>
	jQuery Easing
	<script src="js/jquery.easing.1.3.js"></script>
	Bootstrap
	<script src="js/bootstrap.min.js"></script>
	Waypoints
	<script src="js/jquery.waypoints.min.js"></script>
	Magnific Popup
	<script src="js/jquery.magnific-popup.min.js"></script>
	Salvattore
	<script src="js/salvattore.min.js"></script>
	Main JS
	<script src="js/main1.js"></script>

	

	
	

 
</body>

</html>