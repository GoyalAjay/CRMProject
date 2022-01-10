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
  			font-family:LuloCleanOne-Bold;
  			height: 40px;
  			width: 200px;
  			background-color: #18d26e;
  			color: white;
  		}
  		
  		button[type=submit]:hover
  		{
  			background-color: white;
  			color: #18d26e;
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
  		<h2 style="font-family:LuloCleanOne-Bold;">We are here to help!</h2>
 		<form class="form-horizontal" action="ComplaintSave.jsp">
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
      			<label for="sel1">Problem Category:</label>
      			<select name="problem" class="form-control" id="sel1" required>
        			<option value="">-----</option>
        			<option value="Software Problem">Software Problem</option>
        			<option value="Analsis Problem">Analsis Problem</option>
        			<option value="TeleSales Problem">TeleSales Problem</option>
        			<option value="Problem4">Testing 4</option>
      			</select>
    		</div>
    		<div class="form-group" style="width:460px; margin-left:17%;">
      			<label for="detail">Tell us more about your problem:</label>
      			<textarea name="details" class="form-control" rows="5"></textarea>
    		</div>
    		<div class="form-group">        
      			<div class="col-sm-offset-2 col-sm-10">
        			<button type="submit" class="btn btn-default">Submit</button>
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