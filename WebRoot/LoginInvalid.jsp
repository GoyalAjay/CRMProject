<!DOCTYPE HTML>
<html>
  <head>
 	<link rel="stylesheet" href="css/Login.css">
 	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min(1).js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<style type="text/css">
		.alert
		{
			margin-top:0;
			
		}
	</style>
  </head>
  
  <body>
    <div class="login-wrap" >
		<div class="login-html">
			<div class="alert alert-danger alert-dismissible  fade in">
    			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    			<strong>Invalid!</strong> Username or Password Not Found.
  			</div>
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
			<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
			<div class="login-form">
				<form name="login" action="Login_backend.jsp">
					<div class="sign-in-htm">
						<div class="group">
							<label for="user" class="label">Username</label>
							<input name="user" type="text" class="input" required>
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label>
							<input name="pass" type="password" class="input" data-type="password" required>
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span> Keep me Signed in</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign In">
						</div>
						<div class="hr1"></div>
						<div class="foot-lnk">
							<a class="Forg_pass" data-toggle="modal" data-target="#myModal">Forgot Password?</a>
						</div>
					</div>
					
				</form>
				<form name="signup" action="Signup_Backend.jsp">
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label">Username</label>
							<input name="usrname" type="text" class="input">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label>
							<input name="password" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="confpass" class="label">Repeat Password</label>
							<input name="conf_pass" type="password" class="input" data-type="password">
						</div>
						<div class="group">
							<label for="email" class="label">Email Address</label>
							<input name="email" type="email" class="input">
						</div>
							<input name="type" type="hidden" value="Client">
						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
						<div class="hr2"></div>
						<div class="foot-lnk">
							<label class="alr_mem" for="tab-1">Already Member?</a></label>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="container">
  		<div class="modal fade" id="myModal" role="dialog">
    		<div class="modal-dialog">
      			<div class="modal-content">
        			<div class="modal-header">
          				<h4 class="modal-title" style="float:left;">Forget Password</h4>
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          				
        			</div>
        			<div class="modal-body">
          				<form name="pass_mail" action="ForgetPasswordMail.jsp">
  							<div class="form-group">
    							<label for="email">Username:</label>
    							<input type="text" name="user" class="form-control" id="user">
  							</div>
  							<input type="submit" class="btn btn-primary" value="Submit">
  						</form>
        			</div>
        			<div class="modal-footer">
          				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			</div>
      			</div>
    		</div>
  		</div>
  	</div>
 </body>
</html>
