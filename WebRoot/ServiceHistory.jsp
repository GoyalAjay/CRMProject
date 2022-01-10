<%@ include file="ClientHeader.jsp" %>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
  		header
  		{
  			background-color: black;
  		}
  		.container
  		{
  			margin-top:10%;
  		}
  		.Services
  		{
  			font-family: LuloCleanOne-Bold;
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
	    
	    	String regNo = (String)session.getAttribute("reg_no");
	    	int Reg = Integer.parseInt(regNo);
	    	
	    	
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
	
			PreparedStatement ps = conn.prepareStatement("select * from SERVICE_DETAILS where userid = '"+ Reg +"'");
		
			ResultSet rs = ps.executeQuery();
			
				
	%>			
				
				<div class = container>
					<br></br>
					<div class="Services">
						<h3 class="Services">Services</h3>
					</div>
					<div class="table-responsive">
						<table class = "table">
						<thead>
							<tr>
							<th>Service ID</th><th>Service Date</th><th>Service Name</th><th>Subject</th><th>Status</th>
							</tr>
						</thead>
						<%
							while(rs.next())
							{
						 %>		<tbody>
						 			<tr>
									 	<td><%= rs.getInt(1) %></td>
									 	<td><%= rs.getString(5) %></td>
									 	<td><%= rs.getString(2) %></td>
									 	<td><%= rs.getString(3) %></td>
									 	<td> 
									 		<div class="progress" style="padding:15px;background-color: green;">
	  											<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" 
	  											aria-valuemin="0" aria-valuemax="100">
	  												success
	  											</div>
											</div>
										</td>
									</tr>
								</tbody>
					 	<%
			 				}
			 	}
			 	catch(Exception ex)
			 	{
			 		out.println(ex);
			 	}
			%>
					</table>
				</div>
		
	</div>
</body>
</html>