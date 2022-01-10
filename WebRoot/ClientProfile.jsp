<%@ include file="ClientHeader.jsp" %>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
    
    <style type="text/css">
    	.container
    	{
    		margin-top: 9%;
    		transform: translate(20%,0%);
    		width: 70%;
    	}
    	
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
		  	margin-left: 8%;
		  			
		}
		  		
		a[type=button]:hover
		{
		  	background-color: white;
		  	border: 1px solid #ff1a1a;
		  	color: #ff1a1a;
		}
		
		#changepass
		{
			font-family:comic sans MS;
		  	height: 40px;
		  	width: 200px;
		  	background-color: #18d26e;
		  	color: white;
		  	margin-left: 8%;
		}
		#changepass:hover
		{
			background-color: white;
		  	border: 1px solid #18d26e;
		  	color: #18d26e;
		}
    
    </style>
    
    
</head>

<body>
	<%
		try
		{
	    	InputStream in = getServletContext().getResourceAsStream("Connect.properties");
		    Properties p = new Properties();
		    p.load(in);
		    
		    String dname = (String)p.get("Dname").toString();
		    String url = (String)p.get("URL").toString();
		    String uname = (String)p.get("Uname").toString();
		    String pass = (String)p.get("password").toString();

			Connection conn = DriverManager.getConnection(url, uname, pass);
			PreparedStatement ps = conn.prepareStatement("select * from USERS where reg_no = "+ id);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				
	%>
				    <div class="container">
  						<form action="ClientProfileSave.jsp">
    						<div class="form-group">
      							<label for="usrname">Username:</label>
      							<input style="background-color: #f2f2f2; width: 550px;" type="text" class="form-control" value="<%=rs.getString(2) %>" id="usname" placeholder="Enter username" name="usrname" required>
    						</div>
    
    						<div class="form-group">
      							<label for="email">Email:</label>
      							<input style="background-color: #f2f2f2; width: 550px;" type="email" value="<%=rs.getString(4) %>" class="form-control" id="email" placeholder="Enter email" name="email" required>
    						</div>
    						
    						<div class="row">
	    						<div class="col-sm-2">
	      							<label for="fname">First Name:</label>
	      							<input style="background-color: #f2f2f2;" type="text" class="form-control" id="fname" value="<%=rs.getString(5) %>" placeholder="Enter First name" name="fname" required>
	    						</div>
	    						<div style="margin-left: 31%;"  class="col-sm-2">
	      							<label for="lname">Last Name:</label>
	      							<input style="background-color: #f2f2f2;" type="text" class="form-control" id="lname" value="<%=rs.getString(6) %>" placeholder="Enter Last name" name="lname" required>
	    						</div>
    						</div><br>
    						
    						<div class="row">
	    						<div class="col-sm-2">
	      							<label for="address">House No./Street:</label>
	      							<input style="background-color: #f2f2f2;" type="text" class="form-control" id="address" value="<%=rs.getString(7) %>"  placeholder="Enter Address" name="address" required>
	    						</div>
	    						<div style="margin-top: 2.8%; margin-left: 7%;" class="col-sm-2">
	      							<label for="city">City:</label>
	      							<input style="background-color: #f2f2f2;" type="text" class="form-control" id="city" value="<%=rs.getString(8) %>"  placeholder="Enter City" name="city" required>
	    						</div>
	    						<div style="margin-top: 2.8%; margin-left: 7%;" class="col-sm-2">
	      							<label for="state">State:</label>
	      							<input style="background-color: #f2f2f2;" type="text" class="form-control" id="state" value="<%=rs.getString(9) %>"  placeholder="Enter state" name="state" required>
	    						</div>
    						</div><br>
    						
    						<div class="row">
	    						<div class="col-sm-2">
	      							<label for="country">Country:</label>
	      							<input style="background-color: #f2f2f2;" type="text" class="form-control" id="country" value="<%=rs.getString(10) %>" placeholder="Enter Country" name="country" required>
	    						</div>
	    						<div style="margin-left: 31%;"  class="col-sm-2">
	      							<label for="zip">Zip:</label>
	      							<input style="background-color: #f2f2f2;" type="text" class="form-control" id="zip" value="<%=rs.getInt(11) %>" placeholder="Enter Zip" name="zip" required>
	    						</div>
    						</div><br>
    						<div class="form-group">
      							<label for="phone">Phone:</label>
      							<input style="background-color: #f2f2f2; width: 550px;" type="text" class="form-control" value="<%=rs.getString(13) %>" id="phone" placeholder="Enter Phone" name="phone" required>
    						</div>
    						<button type="submit" class="btn btn-default">Submit</button>
    						<a id="changepass" type="button" href="ChangePassword.jsp" class="btn btn-default">Change Password</a>
    						<a type="button" href="Home.jsp" class="btn btn-default">Cancel</a>
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
   	<%
			}
		}
		catch(Exception ex)
		{
			out.println(ex);
		}
	%>
</body>
</html>