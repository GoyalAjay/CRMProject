<!DOCTYPE HTML>
<html>
<head>
	<link rel="stylesheet" href="Edit.css">
	<link rel="stylesheet" href="EditPage.css">
</head>
	<body>
		<div class="form-style-10">
			<h1>Add New User!</h1>
			<form name="f1" action="UserSave.jsp">
    			<div class="section"><span>1</span>Reg. No. & UserName</div>
    			<div class="inner-wrap">
    				<label>REG. NO. <input type="text" name="reg_no" /></label>
        			<label>User Name <input type="text" name="usrname" /></label>
        			
    			</div>

				<div class="section"><span>2</span>Password & Email</div>
    			<div class="inner-wrap">
    				<label>Password <input type="password" name="password" /></label>
        			<label>Email <input type="Email" name="email" /></label>
        			
    			</div>
    			
    			<div class="section"><span>3</span>First & Last Name</div>
    			<div class="inner-wrap">
    				<label>First Name <input type="text" name="fname" /></label>
        			<label>Last Name <input type="text" name="lname" /></label>
        			
    			</div>
				
				<div class="section"><span>4</span>Address & City</div>
    			<div class="inner-wrap">
    				<label>Address <textarea name="address"></textarea></label>
        			<label>City <input type="text" name="city" /></label>
        			
    			</div>
    			
    			<div class="section"><span>5</span>State & Country & Zip</div>
    			<div class="inner-wrap">
    				<label>State <input type="text" name="state" /></label>
        			<label>Country <input type="text" name="country" /></label>
        			<label>Zip <input type="text" name="zip" /></label>
    			</div>
    			
    			<div class="section"><span>2</span>Type & Phone</div>
    			<div class="inner-wrap">
    				<label>Type <input type="text" name="type" /></label>
        			<label>Phone Number <input type="text" name="phone" /></label>
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