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
  		.complain
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
	
			PreparedStatement ps = conn.prepareStatement("select * from COMPLAIN where userid = '"+ Reg +"'");
		
			ResultSet rs = ps.executeQuery();
			
				
	%>			
				
				<div class = container>
					<br></br>
					<div class="complaint">
						<h3 class="complain">Complaint</h3>
					</div>
					<div class="table-responsive">
						<table class = "table">
						<thead>
							<tr>
							<th>Complain ID</th><th>Complain Date</th><th>Subject</th>
							</tr>
						</thead>
						<%
							while(rs.next())
							{
						 %>		<tbody>
					 			<tr>
								 	<td><%= rs.getInt(1) %></td>
								 	<td><%= rs.getString(2) %></td>
								 	<td><%= rs.getString(7) %></td>
								 	<td>
		
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