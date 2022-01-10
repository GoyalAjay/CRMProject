<%@ include file="Header.jsp" %>
<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="Feedback.css">
	<link rel="stylesheet" href="css/bootstrap.min(1).css">
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<style type="text/css">
		
		body,html
		{
			margin: 0;
			padding:0;
		}
		nav
		{
			margin:0;
			
		}
	
	
	</style>
	
</head>
<body>
	<div class="container">
		<div class="image">
			<img alt="Feedback" src="Feedback.jpg">
		</div>
  		<form id="ratingsForm" class="feedbackform" action="FeedbackSave.jsp">
  			
  			<div class="form-group">
  				<h3>Overall Experience</h3>
	    		<label class="radio-inline">
	      			<input type="radio" name="Experience" value="Excellent">Excellent
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Experience" value="Good">Good
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Experience" value="Fair">Fair
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Experience" value="Poor">Poor
	    		</label>
	    		
  				<h3>Timely Response</h3>
	    		<label class="radio-inline">
	      			<input type="radio" name="Response" value="Excellent">Excellent
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Response" value="Good">Good
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Response" value="Fair">Fair
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Response" value="Poor">Poor
	    		</label>
    		
    		
  				<h3>Our Support</h3>
	    		<label class="radio-inline">
	      			<input type="radio" name="Support" value="Excellent">Excellent
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Support" value="Good">Good
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Support" value="Fair">Fair
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Support" value="Poor">Poor
	    		</label>
    		
  				<h3>Overall Satisfaction</h3>
	    		<label class="radio-inline">
	      			<input type="radio" name="Satisfaction" value="Excellent">Excellent
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Satisfaction" value="Good">Good
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Satisfaction" value="Fair">Fair
	    		</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    		<label class="radio-inline">
	      			<input type="radio" name="Satisfaction" value="Poor">Poor
	    		</label>
    		
    		
    		
	    		<h3>Overall Services</h3>
	    		<div class="stars">
			        <input type="radio" name="Services" class="star-1" id="star-1" />
			        <label class="star-1" for="star-1">1</label>
			        <input type="radio" name="Services" class="star-2" id="star-2" />
			        <label class="star-2" for="star-2">2</label>
			        <input type="radio" name="Services" class="star-3" id="star-3" />
			        <label class="star-3" for="star-3">3</label>
			        <input type="radio" name="Services" class="star-4" id="star-4" />
			        <label class="star-4" for="star-4">4</label>
			        <input type="radio" name="Services" class="star-5" id="star-5" />
			        <label class="star-5" for="star-5">5</label>
			        <span></span>
	    		</div>
    			<br> 
    		
  				<textarea class="form-control" rows="5" placeholder="Give us your thoughts..." name="details"></textarea>
			
			 	<button type="submit" class="btn btn-default">Submit</button>
			</div>
  		</form>
	</div>
</body>
</html>