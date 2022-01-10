<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="pe-icon-7-stroke.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>  
<body>
	
	<%
		String usname = (String)session.getAttribute("usrname");
		String id = (String)session.getAttribute("reg_no");
		int Id = Integer.parseInt(id);
	 %>
	
	<div class="container">
		<nav style="background: black;" class="navbar navbar-inverse navbar-fixed-top">
	  		<div class="container-fluid">
	    		<div class="navbar-header">
	    			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1">
				        	<span class="sr-only">Toggle navigation</span>
				        	<span class="icon-bar"></span>
				        	<span class="icon-bar"></span>
				        	<span class="icon-bar"></span>
				        </button>
	      			<a style="margin-bottom:-2px;" class="navbar-brand" href="UserDetails.jsp"><img alt="RealTech" src="img/Realtech_Logo.png" width="140px" height="30px"/></a>
	    		</div>
	    		<div id="navbar1" class="navbar-collapse collapse">
		    		<ul class="nav navbar-nav">
		      			<li class="lnk"><a href="CustomerDetails.jsp">Customers</a></li>
  						<li class="lnk"><a id ="2" href="CompanyDetails.jsp">Company</a></li>
  						<li class="lnk"><a id ="3" href="ServiceDetails.jsp">Service</a></li>
  						<li class="lnk"><a id ="4" href="UserDetails.jsp">Users</a></li>
  						
		    		</ul>
		    		<ul class="nav navbar-nav navbar-right">
		      			<li class="lnk"><a href="ClientProfile.jsp?reg_no=<%=Id %>"><%=usname %></a></li>
		      			<li class="lnk"><a href="Index.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
		    		</ul>
		    	</div>
	  		</div>
		</nav> 
		
	</div>
  </body>
</html>
