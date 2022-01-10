<%@ include file ="Home.jsp" %>
<!DOCTYPE html>
<html>
<head></head>
<body>
	<div class="container" style="margin-top:5%; width:700px; background-color:white; border-radius:5px;">
  		<h2 style="font-family:LuloCleanOne-Bold;">Get In Touch</h2>
 		<form class="form-horizontal" action="ContactSave.jsp">
 			<div class="form-group" style="margin-top: 5%;">
      			<label class="control-label col-sm-2" for="name">Name:</label>
      			<div class="col-sm-10">
        			<input style="width:460px;" type="text" class="form-control" id="name" placeholder="Your name" name="name">
      			</div>
    		</div>
    		<div class="form-group">
      			<label class="control-label col-sm-2" for="email">Email:</label>
      			<div class="col-sm-10">
        			<input style="width:460px;" type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      			</div>
    		</div>
    		<div class="form-group" style="width:460px; margin-left:17%;">
      			<textarea placeholder="Tell us your Query..." name="details" class="form-control" rows="5"></textarea>
    		</div>
    		<div class="form-group">        
      			<div class="col-sm-offset-2 col-sm-10">
        			<button type="submit" class="btn btn-default">Submit</button>
      			</div>
    		</div>
  		</form>
	</div>
	
	
</body>
</html>