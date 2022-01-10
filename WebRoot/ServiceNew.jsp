<%@ include file="ClientHeader.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<style type="text/css">
  		header
  		{
  			background-color: black;
  		}
  		
  		button[type=submit]
  		{
  			font-family:comic sans MS;
  			height: 40px;
  			width: 100px;
  			background-color: #18d26e;
  			color: white;
  		}
  		
  		button[type=submit]:hover
  		{
  			background-color: white;
  			border: 1px solid #18d26e;
  			color: #18d26e;
  		}
  		a[type=button]
		{
		  	font-family:comic sans MS;
		  	height: 40px;
		  	width: 100px;
		  	background-color: #ff1a1a;
		  	color: white;
		  	margin-left: 28%;
		  			
		}
		  		
		a[type=button]:hover
		{
		  	background-color: white;
		  	border: 1px solid #ff1a1a;
		  	color: #ff1a1a;
		}
  		.container
  		{
  			margin-top:10%;
  		}
  	</style>
  	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div class="container">
  		<h2 style="font-family:LuloCleanOne-Bold;">New Service</h2>
 		<form class="form-horizontal" action="ServiceSave.jsp">
 			<div class="form-group" style="margin-top: 5%;">
      			<label class="control-label col-sm-2" for="name">Name:</label>
      			<div class="col-sm-10">
        			<input style="width:460px;" type="text" class="form-control" id="name" placeholder="Your name" name="name" required>
      			</div>
    		</div>
    		<div class="form-group">
      			<label class="control-label col-sm-2" for="email">Email:</label>
      			<div class="col-sm-10">
        			<input style="width:460px;" type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
      			</div>
    		</div>
    		<div class="form-group" style="width:460px; margin-left:17%;" >
      			<label for="sel1">Service Category:</label>
      			<select name="service" class="form-control" id="sel1" required>
        			<option value="">-----</option>
        			<option value="Software Service">Software Service</option>
        			<option value="Analysis Service">Analysis Service</option>
        			<option value="Telesales Service">Telesales Service</option>
					<option value="Service4">Service 4</option>
      			</select>
    		</div>
    		<div class="form-group" style="width:460px; margin-left:17%;">
      			<label for="details">Give Us some more insight:</label>
      			<textarea name="details" class="form-control" rows="5"></textarea>
    		</div>
    		<div class="form-group">        
      			<div class="col-sm-offset-2 col-sm-10">
        			<button type="submit" class="btn btn-default">Submit</button>
        			<a type="button" href="Home.jsp" class="btn btn-default">Cancel</a>
      			</div>
    		</div>
  		</form>
	</div>
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