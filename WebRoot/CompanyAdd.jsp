<!DOCTYPE HTML>
<html>
  <head>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/Edit.css">
	<link rel="stylesheet" href="css/EditPage.css">
  </head>
  
  <body>
   	<div class="form-style-10">
			<h1>Add New Customer!</h1>
			<form name="f2" action="CompanySave.jsp">
    			<div class="section"><span>1</span>Name</div>
    			<div class="inner-wrap">
        			<label>Full Name <input type="text" name="c_name" /></label>
        			
    			</div>

    			<div class="section"><span>2</span>Address & Phone</div>
    			<div class="inner-wrap">
    				<label>Address <textarea name="c_address"></textarea></label>
        			
        			<label>Phone Number <input type="text" name="c_phone" /></label>
    			</div>
    			
    			<div class="button-section">
     				<input type="submit" value="ADD" />
     				<!--
     				<span class="privacy-policy">
						<input type="checkbox" name="field7">You agree to our Terms and Policy. 
     				</span>
     				-->
    			</div>
			</form>
		</div>	
  </body>
</html>
