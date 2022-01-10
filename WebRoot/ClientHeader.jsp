<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE HTML>
<html>
<head>
	<title>Realtech</title>
	<link href="img/favicon.png" rel="icon">
  	<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  	<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  	<link href="lib/animate/animate.min.css" rel="stylesheet">
  	<link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  	<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  	<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  	<link href="css/Frontendstyle.css" rel="stylesheet">
  	<link href="css/googleapis.css" rel="stylesheet">
  	<style type="text/css">
  		li a:hover
  		{
  			text-decoration: none;
  		}
  	
		h1 a:hover
		{
			text-decoration: none;
		}  	
  	</style>
</head>
<body>
	
	<%
		String usname = (String)session.getAttribute("usrname");
		String id = (String)session.getAttribute("reg_no");
		int Id = Integer.parseInt(id);
	 %>

	
<body>
	<header id="header">
    	<div class="container-fluid">

	      	<div id="logo" class="pull-left">
	        	
	        	<a href="Home.jsp"><img alt="RealTech" src="img/Realtech_Logo.png" width="140px" height="30px"/></a>
	      	</div>
	
	      	<nav id="nav-menu-container">
	        	<ul class="nav-menu">
	        	
	          		<li class="menu-active"><a href="#intro">Home</a></li>
	          		<li class="menu-has-children"><a href="">Services</a>
		            	<ul>
		              		<li><a href="ServiceNew.jsp">Request New</a></li>
		              		<li><a href="ServiceHistory.jsp">History</a></li>
		            	</ul>
	          		</li>
	          		<li class="menu-has-children"><a href="">Complaint</a>
	            		<ul>
	              			<li><a href="ComplaintNew.jsp">New</a></li>
	              			<li><a href="ComplaintHistory.jsp">History</a></li>
	            		</ul>
	          		</li>
	          		<li><a href="#contact">Contact</a></li>
	          		<li><a href="Feedback.jsp">Feedback</a></li>
	          		<li><a href="ClientProfile.jsp"><%= usname %></a></li>
	          		<li><a href="SessionInvalidate.jsp">Logout</a></li>
	        	</ul>
	      	</nav><!-- #nav-menu-container -->
    	</div>
	</header><!-- #header -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
</body>
</html>