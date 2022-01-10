
<%@ include file="Header.jsp" %>
<%@ page import = "java.sql.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "java.util.*"%>

<!DOCTYPE html>
<html>
<head>
	
	
	<style type="text/css">
	
		.container
		{
			margin-left:7%;
			margin-top:2%;
		}
		
		table
		{
			margin-top:1%;
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
	    
			Class.forName(dname);
			Connection conn = DriverManager.getConnection(url, uname, pass);
	
			PreparedStatement ps = conn.prepareStatement("select * from COMPANY");
		
			ResultSet rs = ps.executeQuery();
			
				
	%>			
				
				<div class = container>
					<br></br>
					<div class=Company>
						<h3 style="font-family: LuloCleanOne-bold">Company</h3>
					</div>
					<div class="table-responsive">
					<table class = "table">
						<thead>
							<tr>
								<th>ID</th><th>NAME</th><th>ADDRESS</th><th>PHONE NUMBER</th><th><a data-toggle="tooltip" data-placement="top" title="Add New"  href = "CompanyAdd.jsp"><img alt="New" src="img/new.png" width="30px" height="30px"></a></th>
							</tr>
						</thead>
					<%
						while(rs.next())
						{
					 %>		
					 	<tbody>
				 			<tr>
							 	<td><%= rs.getInt(1) %></td>
							 	<td><%= rs.getString(2) %></td>
							 	<td><%= rs.getString(3) %></td>
							 	<td><%= rs.getString(4) %></td>
							 	<td>	
							 		<a data-toggle="tooltip" data-placement="top" title="Edit"  href = "CompanyEdit.jsp?id=<%= rs.getInt(1) %>"><img alt="Edit" src="img/edit.png" width="30px" height="30px" /></a>
							 		<a data-toggle="tooltip" data-placement="top" title="Delete"  href = "CompanyDelete.jsp?id=<%= rs.getInt(1) %>"><img alt="Delete" src="img/remove.png" width="30px" height="30px" /></a>
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
	<script>
		$(document).ready(function()
		{
  			$('[data-toggle="tooltip"]').tooltip();   
		});
</script>
</body>
</html>